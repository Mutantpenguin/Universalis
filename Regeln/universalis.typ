#let img_aktion = image("Grafiken/Allgemein/aktion.svg", alt: "Aktion")
#let img_reaktion = image("Grafiken/Allgemein/reaktion.svg", alt: "Reaktion")

#let lnk(label_name, alt: "") = {
  let label = label(label_name.replace(" ", "-"))

  context {
    if query(label).len() > 0 {
      let display_name = if alt.len() > 0 { alt } else { label_name }
      link(label)[#display_name]
      " ("
      ref(label, form: "page", supplement: "Seite")
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

  #let table_line_width = 0.1pt
  #set table(
    stroke: (x, y) => (
      top: table_line_width,
      bottom: table_line_width,
      left: if x > 0 { table_line_width },
      rest: none,
    ),
    fill: (_, y) => (if y == 0 { luma(240) }),
  )

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
