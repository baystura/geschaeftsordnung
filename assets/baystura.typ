#let baystura-midnight = color.rgb("#005669")
#let baystura-amaranth = color.rgb("#B6174B")

////////////////////////////////////////////////////////////////////////////////

#let baystura-lines(height: 3em) = {
	let h = height / 14
	stack(
		dir: ltr,
		spacing: 4 * h,
		line(length: 14 * h, stroke: h + baystura-midnight),
		line(length: 54.125 * h, stroke: h + baystura-amaranth),
		line(length: 100% - (14+54.125+2*4) * h, stroke: h + baystura-midnight),
	)
}

#let baystura-logo(height: 3em, has-line: false) = {
	let h = height / 14
	stack(
		spacing: (4 + 0.5) * h,
		image("logo-color.svg", height: height),
		if has-line { baystura-lines(height: height) },
	)
}

#let baystura-title(title: none, subtitle: none, date: datetime.today()) = {
	let _date = if date == none {
			none
		} else if type(date) == datetime {
			date.display("[day].[month].[year]")
		} else {
			date
		}

	stack(
		spacing: 1em,
		text(size: 1.75em, fill: baystura-amaranth, weight: "medium", upper(title)),
		text(size: 1.25em, fill: baystura-midnight, weight: "medium", upper(subtitle)),
		baystura-lines(height: 3em),
		if _date != none { align(right, text(fill: baystura-midnight, _date)) },
	)
}

#let baystura(body) = {
	set text(lang: "de", font: "Poppins")
	set par(justify: true, leading: 0.85em)

	show heading: set block(above: 2em, below: 1.5em)
	show heading.where(level: 1): set text(fill: baystura-amaranth, weight: "semibold")
	show heading.where(level: 2): set text(fill: baystura-amaranth, weight: "semibold")
	show heading.where(level: 3): set text(fill: baystura-midnight, weight: "semibold")
	
	body
}
