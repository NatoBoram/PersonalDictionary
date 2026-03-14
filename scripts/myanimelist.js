/**
 * @see https://myanimelist.net/animelist/NatoBoram
 * @see https://myanimelist.net/mangalist/NatoBoram
 *
 * @module
 */
;(() => {
	/** @type NodeListOf<HTMLAnchorElement> */
	const anchors = document.querySelectorAll("td.data.title a.link.sort")

	const tsv = Array.from(anchors)
		.map((a) => `\t${a.textContent}\t`)
		.sort()
		.join("\n")

	const gboard = `# Gboard Dictionary version:1\n${tsv}`
	copy(gboard)
})()
