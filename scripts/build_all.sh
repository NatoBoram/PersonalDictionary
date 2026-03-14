#!/bin/sh

set -eu

for dictionary_file in dictionaries/*.tsv; do
	dictionary_name=${dictionary_file##*/}
	dictionary_name=${dictionary_name%.tsv}
	scripts/build.sh "$dictionary_name" >/dev/null
done

ls PersonalDictionary-*.zip
