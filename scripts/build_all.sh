#!/bin/sh

set -eu

for dictionary_file in dictionaries/*.txt; do
	dictionary_name=${dictionary_file##*/}
	dictionary_name=${dictionary_name%.txt}
	scripts/build.sh "$dictionary_name" >/dev/null
done

ls PersonalDictionary-*.zip
