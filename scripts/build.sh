#!/bin/sh

set -eu

# Help
if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <dictionary>"
	exit 0
fi

# Invalid argument count
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <dictionary>" >&2
	exit 1
fi

# 7z is required
if ! command -v 7z >/dev/null; then
	echo "7z: command not found" >&2
	exit 1
fi

# In case a random dictionary is given
dictionary_name=$1
dictionary_path="dictionaries/$dictionary_name.tsv"
if [ ! -f "$dictionary_path" ]; then
	echo "Dictionary not found: $dictionary_path" >&2
	exit 1
fi

output_name="PersonalDictionary-$dictionary_name.zip"
output_path="$(pwd)/$output_name"
rm -rf "$output_name"

tmp_dir=$(mktemp -d)
cleanup() {
	rm -rf "$tmp_dir"
}
trap cleanup EXIT INT TERM

cp "$dictionary_path" "$tmp_dir/dictionary.txt"
(cd "$tmp_dir" && 7z a -bt -mx9 -tzip "$output_path" dictionary.txt)

7z l "$output_name"
