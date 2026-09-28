#!/usr/bin/env sh
set -eu

package_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
codex_home=${CODEX_HOME:-"$HOME/.codex"}
pet_dir="$codex_home/pets/frostlich"

mkdir -p "$pet_dir"
cp "$package_dir/pet.json" "$pet_dir/pet.json"
cp "$package_dir/spritesheet.webp" "$pet_dir/spritesheet.webp"

printf 'Installed Frostlich in %s\n' "$pet_dir"
printf '%s\n' 'Open Settings > Pets, select Refresh, and choose Frostlich.'
