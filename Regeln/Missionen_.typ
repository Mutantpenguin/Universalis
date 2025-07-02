#import "universalis.typ" as uni

#let zonen(..images) = {
  let img_array = ()

  for img in images.pos() {
    img_array.push(image(img, width: 25%))
  }

  place(
    top + center,
    float: true,
    scope: "parent",
  )[
    #stack(
      dir: ltr,
      ..img_array,
    )
  ]
}

#show: uni.style

#set page(
  paper: "a4",
  columns: 2,
  numbering: "1",
  margin: (x: 1.5cm, y: 1.5cm),
  footer: uni.footer,
)

#let title = "Universalis - Missionen"

#set document(
  title: title,
  author: "Markus Lobedann <markus.lobedann@gmail.com>",
  description: "Missionen für Universalis",
)

#place(
  top,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #grid(
    columns: (6fr, 1fr),
    [
      #text(
        font: "Nova Round",
        size: 35pt,
        title,
      )
      #v(10pt, weak: true)
      Version #uni.version
    ],
    align(
      right,
      image("../Grafiken/logo.svg"),
    ),
  )
  #v(10pt, weak: true)
  #line(length: 100%, stroke: 2pt + gradient.linear(black, white))

  #v(20pt)

  TODO

]

#outline(
  title: "Inhaltsverzeichnis",
  depth: 2,
)

= Allgemeines

Die im folgenden beschriebenen Missionen beziehen sich immer auf eine Spielfeldgröße von 36" \* 36".

#image("Grafiken/Abbildungen/spielfeld.svg", alt: "Spielfeld")

Die Aufstellungszone ist jeweils der grün schraffierte Bereich.

Sofern eine Mission weitere Zonen benötigt werden diese ebenfalls schraffiert, aber in anderen Farben dargestellt.

= Bergung

#zonen("Grafiken/Missionen/Bergung/01.svg")

Das Spiel ist gewonnen, sobald sich am Ende einer Initiativephase mindestens X - 1 `[Gegenstände]` in der eigenen Aufstellungszone befinden.

= Erobern

TODO

= Eliminierung

#zonen(
  "Grafiken/Missionen/Eliminierung/01.svg",
  "Grafiken/Missionen/Eliminierung/02.svg",
  "Grafiken/Missionen/Eliminierung/03.svg",
)

Das Spiel ist gewonnen, sobald alle Modelle des Gegners eliminiert oder vom Spielfeld entfernt worden sind.

= Extraktion

#zonen(
  "Grafiken/Missionen/Extraktion/01.svg",
  "Grafiken/Missionen/Extraktion/02.svg",
  "Grafiken/Missionen/Extraktion/03.svg",
)

Das Spiel ist gewonnen, sobald am Ende einer Initiativephase mindestens die Hälfte aller eigenen Modelle (aufgerundet) die Extraktionszone (in rot) erreicht haben.

= Transport

#zonen(
  "Grafiken/Missionen/Transport/01.svg",
  "Grafiken/Missionen/Transport/02.svg",
  "Grafiken/Missionen/Transport/03.svg",
)

Das Spiel ist gewonnen, sobald sich am Ende einer Initiativephase mindestens X - 1 `[Gegenstände]` in den Zielzonen (in rot) befinden.
