#import "@preview/in-dexter:0.7.0": *

#let img_aktion = image("Grafiken/Allgemein/aktion.svg", alt: "Aktion", height: 10pt)
#let img_reaktion = image("Grafiken/Allgemein/reaktion.svg", alt: "Reaktion", height: 10pt)

#let table_line_width = 0.1pt

#let _base_table = table.with(
  stroke: (x, y) => (
    top: table_line_width,
    bottom: table_line_width,
    left: if x > 0 { table_line_width },
    rest: none,
  ),
)

#let table_h = _base_table.with(fill: (_, y) => (if y == 0 { luma(240) }))
#let table_v = _base_table.with(fill: (x, _) => (if x == 0 { luma(240) }))
#let table_n = _base_table

#let lnk(label_name, alt: "") = {
  let label = label(label_name.replace(" ", "-"))

  context {
    if query(label).len() > 0 {
      let display_name = if alt.len() > 0 { alt } else { label_name }
      link(label)[#display_name]
      " ("
      ref(label, form: "page")
      ")"
    } else {
      text(
        "<LNK LABEL '" + label_name + "' NOT FOUND>",
        weight: "bold",
        fill: red,
      )
    }
  }
}

#let example(content, caption: "") = {
  figure(
    supplement: "Beispiel",
    kind: "Beispiel",
    block(
      stroke: gray,
      radius: 5pt,
      inset: 10pt,
      width: 100%,
      content,
    ),
    caption: caption,
  )
}

#let _activity(icon, index_parent, name, points, content, condition) = {
  block(
    stroke: black,
    radius: 5pt,
    breakable: false,
    clip: true,
    [
      // header
      #table(
        columns: (15%, 1fr, 20%),
        stroke: (x, y) => (
          top: if y > 0 { black },
          left: if x > 0 { black },
          bottom: black,
        ),
        fill: luma(240),
        align: alignment.center,
        table.cell(
          align: horizon,
          icon,
        ),
        table.cell(
          align: horizon,
          name + index(index_parent, name),
        ),
        table.cell(
          align: horizon,
          text(points + " ⊙", weight: "bold"),
        ),
      )

      #v(0pt, weak: true)

      #block(
        inset: 5pt,
        content,
      )

      #if condition != "" {
        v(0pt, weak: true)

        // footer
        table(
          columns: (15%, 1fr),
          stroke: (x, y) => (
            top: black,
            left: if x > 0 { black },
          ),
          fill: luma(240),
          align: alignment.center,
          table.cell("!"), // TODO show the correct symbol for "conditions"
          table.cell(
            align: left + horizon,
            condition,
          ),
        )
      }
    ],
  )
}

#let action(name, points, content, condition: "") = {
  _activity(img_aktion, "Aktionen", name, points, content, condition)
}

#let reaction(name, points, content, condition: "") = {
  _activity(img_reaktion, "Reaktionen", name, points, content, condition)
}

#let style(doc) = [

  #let heading_font = "Noto Sans"

  #set figure.caption(position: top)
  #show figure.caption: set align(left)
  #show figure.caption: set text(style: "italic")
  #show figure.caption: set text(size: 8pt)

  #set text(lang: "de")
  #set text(region: "DE")

  #set par(
    justify: true,
    linebreaks: "optimized",
  )

  #set page(
    paper: "a4",
    columns: 2,
    numbering: "1",
    margin: (x: 1.5cm, y: 1.5cm),
    footer: context {
      // Get current page number.
      let i = counter(page).at(here()).first()

      // Align right for even pages and left for odd.
      let is-odd = calc.odd(i)
      let aln = if is-odd {
        right
      } else {
        left
      }

      // Are we on a page that starts a chapter?
      let target = heading.where(level: 1)
      // if query(target).any(it => it.location().page() == i) {
      //   return align(aln)[#i]
      // }

      // Find the chapter of the section we are currently in.
      let before = query(target.before(here()))
      if before.len() > 0 {
        let current = before.last()
        let gap = 1.75em
        let chapter = upper(text(size: 0.68em, current.body))
        if current.numbering != none {
          if is-odd {
            align(aln)[#chapter #h(gap) #i]
          } else {
            align(aln)[#i #h(gap) #chapter]
          }
        }
      }
    },
  )

  #show link: underline

  #set text(
    font: "Noto Sans",
    size: 10pt,
  )

  #set heading(numbering: "1.1")

  #show heading.where(level: 1): it => {
    set text(
      font: heading_font,
      size: 20pt,
      weight: "bold",
    )
    pagebreak(weak: true)
    block(
      smallcaps(it.body),
      below: 1.5em,
    )
  }

  #show heading.where(level: 2): it => {
    set text(
      font: heading_font,
      size: 12pt,
      weight: "bold",
    )
    block(smallcaps(it.body))
  }

  #show heading.where(level: 3): it => {
    set text(
      font: heading_font,
      size: 10pt,
      weight: "bold",
    )
    block(smallcaps(it.body))
  }

  #doc
]
