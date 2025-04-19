#import "baystura.typ" : *

#let nop(body) = body
#let sic(body) = text(fill: color.orange, [#body [sic!]])
#let check(body) = text(fill: color.orange, body)
#let add(body) = text(fill: color.olive, body)
#let del(body) = text(fill: color.red, strike(body))

#let maybe(delete, addition, body) = if delete { del(body) } else if addition { add(body) } else { nop(body) }

////////////////////////////////////////////////////////////////////////////////

#let structure-counter = counter("structure")
#let paragraf-counter = counter("paragraf")

#let teil(del: false, add: false, ref: none, body) = {
	structure-counter.step(level: 1)
	set align(center)

	context [#metadata((
		type: "teil",
		label: "Teil",
		body: body,
		number: structure-counter.get().at(0),
	)) #ref]
	context maybe(del, add, heading(level: 1)[#text(size: 0.8em, weight: "regular")[TEIL #structure-counter.get().at(0)]\ #body])
}

#let abschnitt(del: false, add: false, ref: none, body) = {
	structure-counter.step(level: 2)
	set align(center)

	context [#metadata((
		type: "abschnitt",
		label: "Abschnitt",
		body: body,
		number: structure-counter.get().at(1),
	)) #ref]
	context maybe(del, add, heading(level: 2)[#text(size: 0.8em, weight: "regular")[ABSCHNITT #structure-counter.get().at(1)]\ #body])
}

#let paragraf(del: false, add: false, ref: none, body) = {
	if del == false { paragraf-counter.step(level: 1) }

	context [#metadata((
		type: "paragraf",
		label: "§",
		body: body,
		number: paragraf-counter.get().at(0),
	)) #ref]
	context maybe(del, add, heading(level: 3, [§ #paragraf-counter.get().at(0) #body]))
}

#let abs(del: false, add: false, ref: none, body) = {
	paragraf-counter.step(level: 2)

	context [#metadata((
		type: "absatz",
		label: "Abs.",
		body: body,
		number: paragraf-counter.get().at(1),
	)) #ref]
	grid(
		columns: (1cm, 1fr),
		context maybe(del, add, [(#paragraf-counter.get().at(1))]),
		body,
	)
}

#let S(ref: none, body) = {
	paragraf-counter.step(level: 3)
	context [#metadata((
		type: "satz",
		label: (long: "Satz", short: "S."),
		body: body,
		number: paragraf-counter.get().at(2),
	)) #ref]
	context [#text(weight: 300, super(typographic: false)[#paragraf-counter.get().at(2)])#body]
}

#let label-for(data, variant: none) = [#if type(data.label) == dictionary { data.label.at(variant) } else { data.label }~#data.number]
#let metadata-at(loc, type: none) = query(selector(metadata).before(loc)).map(x => x.value).filter(x => x.type == type).last()

#let at(suffix: none, substitution: none, label) = context {
	let q = query(label)
	if q.len() == 0 { panic("Label not found: " + repr(label)) }
	let data = q.at(0).value

	let lbl = if substitution == none {
		let components = ()
		if data.type != "paragraf" {
			let current-par = metadata-at(here(), type: "paragraf")
			let par-at-label = metadata-at(label, type: "paragraf")
			let current-abs = metadata-at(here(), type: "absatz")
			let abs-at-label = metadata-at(label, type: "absatz")

			let new = (
				if current-par != par-at-label { label-for(par-at-label, variant: "short") },
				if current-abs != abs-at-label { label-for(abs-at-label, variant: "short") },
			).filter(x => x != none)
			for c in new { components.push(c) }
		}

		if components.len() == 0 or data.type == "satz" {
			components.push(label-for(data, variant: if components.len() == 0 { "long" } else { "short" }))
		}
		if suffix != none { components.push(suffix) }
		components.join(" ")
	} else {
		substitution
	}

	// link(label, check(lbl))
	link(label, lbl)
}

#let legal-outline(indent: true) = [
	#show outline.entry: it => {
		let q = query(selector(metadata).before(it.element.location()))
		let m = q.rev().at(0, default: none)
		if m == none { return }
		let i = m.value

		let weight = if i.type == "teil" {
			"semibold"
		} else if i.type == "abschnitt" {
			"medium"
		} else {
			"regular"
		}
		set text(weight: weight)

		link(
			it.element.location(),
			it.indented([#i.label #i.number], [#i.body #box(width: 1fr, repeat([.], gap: 0.15em)) #it.element.location().page()]),
		)
	}
	#outline(depth: 3, indent: if indent { 1em } else { 0pt })
]

////////////////////////////////////////////////////////////////////////////////


#let note(title, body) = {
	set rect(fill: silver, stroke: baystura-amaranth + 0.5pt, inset: 1.25em)
	block(
		breakable: false,
		below: 2em,
		stack(
			rect(inset: (y: 0.5em), fill: baystura-amaranth, text(fill: white, size: 0.8em, weight: 600, upper(title))),
			rect(width: 100%, body),
		)
	)
}

#let reason = note.with([Begründung])
#let alternative(variant: [], body) = note([Alternative #variant], body)
