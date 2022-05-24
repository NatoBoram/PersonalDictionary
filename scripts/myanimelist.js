// https://myanimelist.net/animelist/NatoBoram
Array.from(document.querySelectorAll("td.data.title.clearfix a.link.sort"))
	.map((a) => a.textContent)
	.sort()
	.join("\n")
