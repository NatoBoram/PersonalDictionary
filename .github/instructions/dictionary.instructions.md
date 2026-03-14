---
applyTo: dictionaries/*.txt
---

- Keep the required Gboard header at the top of every dictionary file:

  ```txt
  # Gboard Dictionary version:2
  # Gboard Dictionary format:shortcut	word	language_tag	pos_tag
  ```

- Use tab-separated values, not spaces.
- Keep one entry per line in this shape: `<shortcut>\t<word>\t<language_tag>\t<pos_tag>`.
- Keep empty shortcut or empty position fields explicit with tabs.
- Use language tags that match existing project usage, such as `en-CA` and `fr-CA`.
- Preserve words with apostrophes and accents exactly as written.
- Keep entries sorted where practical and do not reorder headers.
- Keep dictionary file names stable and kebab-case.

Reference: `README.md` format section is canonical for Gboard TSV expectations.
