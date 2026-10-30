#!/usr/bin/env bash
set -euo pipefail

setbacks=(1 2 3 5 7 14 30 60)
bucket="https://nix-releases.s3.amazonaws.com"
releases="https://releases.nixos.org/nixpkgs"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
flake="$root/flake.nix"

fail() {
  echo "error: $*" >&2
  exit 1
}

current=$(curl -fsSI https://channels.nixos.org/nixpkgs-unstable |
  grep -i '^location:' |
  grep -oE 'nixpkgs-[0-9]+\.[0-9]+pre' |
  grep -oE '[0-9]+\.[0-9]+') || fail "could not determine current nixpkgs-unstable version"

major=${current%.*}
minor=${current#*.}
if [[ $minor == 05 ]]; then
  previous="$((10#$major - 1)).11"
else
  previous="$major.05"
fi

list() {
  local xml
  xml=$(curl -fsS "$bucket/?list-type=2&delimiter=/&prefix=nixpkgs/nixpkgs-$1pre")
  if grep -q '<IsTruncated>true' <<<"$xml"; then
    fail "release listing for $1 is truncated"
  fi
  grep -oE '<Key>[^<]+</Key><LastModified>[^<]+' <<<"$xml" |
    sed -E 's|<Key>nixpkgs/([^<]+)</Key><LastModified>(.+)|\2 \1|' || true
}

history=$({
  list "$previous"
  list "$current"
} | sort)
[[ -n $history ]] || fail "no releases found for $previous or $current"

for n in "${setbacks[@]}"; do
  cutoff=$(date -u -d "$n days ago" +%Y-%m-%dT%H:%M:%S)
  name=$(awk -v c="$cutoff" '$1 <= c { r = $2 } END { print r }' <<<"$history")
  [[ -n $name ]] || fail "no release older than $n days"

  rev=$(curl -fsS "$releases/$name/git-revision")
  [[ $rev =~ ^[0-9a-f]{40}$ ]] || fail "invalid revision for $name: $rev"

  sed -i -E "s|(nixpkgs-${n}d\.url = \"github:NixOS/nixpkgs/)[^\"]*|\1${rev}|" "$flake"
  grep -qF "nixpkgs-${n}d.url = \"github:NixOS/nixpkgs/${rev}\"" "$flake" ||
    fail "could not update nixpkgs-${n}d in flake.nix"

  printf '%-4s %s %s\n' "${n}d" "$rev" "$name"
done

nix --extra-experimental-features 'nix-command flakes' flake lock "$root"
