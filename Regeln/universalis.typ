#import "@preview/in-dexter:0.7.0": *

#let version = "0.7.0"

#let img = (
  activity: (
    aktion: image("Grafiken/Allgemein/aktion.svg", alt: "Aktion", height: 10pt),
    reaktion: image("Grafiken/Allgemein/reaktion.svg", alt: "Reaktion", height: 10pt),
    voraussetzung: image("Grafiken/Allgemein/voraussetzung.svg", alt: "Voraussetzung", width: 20pt),
  ),
)

#let color = (
  primary: rgb("#495664ff"),
  secondary: rgb("#f8fcebff"),
)

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
      box(
        fill: red,
        outset: 4pt,
        radius: 3pt,
        stroke: luma(1),
        text(
          "LNK LABEL '" + label_name + "' NOT FOUND",
          weight: "bold",
          fill: black,
        ),
      )
    }
  }
}

#let example(body, caption: "") = {
  block(
    breakable: false,
    stroke: gray + 1pt,
    radius: 2pt,
    inset: 0.5em,
    width: 100%,
    fill: luma(250),
    figure(
      gap: 1em,
      supplement: [
        #text(font: "Noto Emoji", emoji.info)
        Beispiel
      ],
      kind: "Beispiel",
      caption: caption,
      text(size: 8pt, body),
    ),
  )
}

#let _activity(icon, index_parent, name, points, content, condition) = {
  block(
    stroke: black,
    radius: 3pt,
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
          table.cell(img.activity.voraussetzung),
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
  _activity(img.activity.aktion, "Aktionen", name, points, content, condition)
}

#let reaction(name, points, content, condition: "") = {
  _activity(img.activity.reaktion, "Reaktionen", name, points, content, condition)
}

#let style(doc) = [

  #set text(lang: "de")
  #set text(region: "DE")

  #let heading_font = "Noto Sans"

  #show figure.caption: set text(style: "italic")
  #show figure.caption: set text(size: 8pt)

  #show figure.where(kind: "Beispiel"): it => {
    set figure.caption(position: top)
    set align(left)
    it
  }

  #set par(
    justify: true,
    linebreaks: "optimized",
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
      size: 22pt,
      weight: "bold",
    )
    pagebreak(weak: true)
    place(
      top,
      float: true,
      scope: "parent",
      clearance: 0.7em,
    )[
      #smallcaps(it.body)
      #v(5pt, weak: true)
      #line(length: 100%, stroke: gradient.linear(black, white))
    ]
  }

  #show heading.where(level: 2): it => {
    set text(
      font: heading_font,
      size: 12pt,
      weight: "bold",
    )
    block([
      #smallcaps(it.body)
      #v(5pt, weak: true)
      #line(length: 100%, stroke: gradient.linear(luma(200), white))
    ])
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

#let footer = context {
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
}
