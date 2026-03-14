# PersonalDictionary

[![Node.js CI](https://github.com/NatoBoram/PersonalDictionary/actions/workflows/node.js.yaml/badge.svg)](https://github.com/NatoBoram/PersonalDictionary/actions/workflows/node.js.yaml)

A collection of dictionaries that can be imported into Gboard.

## How to use

1. Pick the dictionary you want to use and download the `.tsv` file
2. Rename the file to `dictionary.txt`
3. Compress it as Zip and give it the name `PersonalDictionary-1.zip`
4. Import the dictionary into Gboard.

Please avoid importing a dictionary twice. Doing so will cause issues in Gboard and you'll have to reboot your device to get it back to a working state.

Alternatively, there are scripts to automatically build them:

```sh
pnpm run build <dictionary>
```

This generates a `PersonalDictionary-<dictionary>.zip` that's ready to import into Gboard. You can also run `pnpm run build:all` to build all the dictionaries at once.

## Guidelines

These dictionaries are for my personal use, and as such, have a few guidelines that you might not agree with. Use at your own discretion.

1. Proper names are in their original language and stored under "All languages".
2. The whole world wasn't copied to these dictionaries, only what's relevant to me.

A lot of the words in [french.tsv](dictionaries/french.tsv) are simply words with apostrophes, which Gboard seems to struggle with.

## Format

Gboard dictionaries are [tab-separated values](https://en.wikipedia.org/wiki/Comma-separated_values) with one word per line.

The first line has to start with the header below. An additional comment `# From OS` can be found when users add an entry from outside of Gboard.

```tsv
# Gboard Dictionary version:2
# Gboard Dictionary format:shortcut	word	language_tag	pos_tag
```

| Shortcut | Word                    | Language | Position |
| :------- | :---------------------- | :------- | :------- |
| iirc     | if I remember correctly | en       |          |
