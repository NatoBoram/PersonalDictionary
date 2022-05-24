// https://www.leagueofgraphs.com
Array.from(document.querySelectorAll("#championListBox .championName"))
	.map((div) => div.innerText)
	.sort()
	.join("\n")
