#import "universalis.typ" as uni
#import "aktivitäten.typ" as activities

#show: uni.style

#set page(
  paper: "a4",
  columns: 2,
  numbering: "1",
  margin: (x: 1.5cm, y: 2.5cm),
  header: block(
    width: 100%,
    height: 2.5em,
    radius: 3pt,
    fill: uni.color.primary,
    text(
      font: "Nova Round",
      size: 20pt,
      fill: uni.color.secondary,
      align(
        center + alignment.horizon,
        [Universalis - Referenzbogen],
      ),
    ),
  ),
  footer: none,
)

#let sheet_block(titel, content) = {
  block(
    stroke: black,
    radius: 3pt,
    width: 100%,
    breakable: false,
    clip: true,
    [
      #block(
        width: 100%,
        height: 2em,
        fill: uni.color.primary,
        align(
          center + horizon,
          text(
            titel,
            size: 14pt,
            font: "Nova Round",
            fill: uni.color.secondary,
          ),
        ),
      )
      #block(
        inset: (
          left: 1em,
          right: 1em,
          bottom: 1em,
        ),
        content,
      )
    ],
  )
}

#let sheet_heading(titel) = {
  text(size: 12pt, weight: "bold", titel)
}

#let sheet_activities(icon, titel, activities_group) = {
  sheet_block(
    grid(
      columns: (auto, auto),
      inset: 0.5em,
      icon, titel,
    ),
    [
      #for (key, group) in activities_group {
        block(
          below: 0.5em,
          [
            #sheet_heading(group.name)

            #v(0.5em, weak: true)

            #let sorted = group.activities.sorted(key: it => it.name.text)

            #table(
              columns: (10%, 1fr, 20%),
              align: (left, left, center),
              stroke: (x, y) => (
                top: if x > 0 and y > 0 { luma(200) },
              ),
              ..for i in sorted { ([], i.name, i.points) }
            )
          ],
        )
      }
    ],
  )
}

#sheet_activities(
  uni.img.activity.aktion,
  [AP-Kosten Aktionen],
  activities.action_groups,
)

#sheet_activities(
  uni.img.activity.reaktion,
  [AP-Kosten Reaktionen],
  activities.reaction_groups,
)

#sheet_block(
  [Ablauf der Runden],
  [
    #sheet_heading([Rundenbeginn])

    - Die AP jedes Modells werden wieder aufgefüllt.
      Die nicht verbrauchten und bereits halbierten AP aus der Vorrunde werden addiert.
    - Modelle mit Schock-Token verlieren automatisch pro Token 1 AP.

    #sheet_heading([Initiativephase])

    - Token für schnelle Bewegung, Verteidigung oder Feuerbereitschaft entfernen.
    - Vergiftung anwenden.
    - Brennen anwenden.
  ],
)

#sheet_block(
  [Fernkampf-Modifikatoren],
  [
    #table(
      columns: (10%, 1fr, 30%),
      stroke: (x, y) => (
        top: if y > 0 { luma(200) },
      ),
      align: (left, left, center),

      table.cell(colspan: 3, [*Deckung*]),
      table.cell([]),
      table.cell([weich]),
      table.cell([-1]),
      table.cell([]),
      table.cell([hart]),
      table.cell([-2]),
      table.cell([]),
      table.cell([massiv]),
      table.cell([-3]),

      table.cell(colspan: 2, [*Gezielter Schuss*]),
      table.cell([+2]),

      table.cell(colspan: 3, [*Größe*]),
      table.cell([]),
      table.cell([klein]),
      table.cell([-1]),
      table.cell([]),
      table.cell([mittel]),
      table.cell([±0]),
      table.cell([]),
      table.cell([groß]),
      table.cell([+1]),
      table.cell([]),
      table.cell([riesig]),
      table.cell([+2]),

      table.cell(colspan: 2, [*Indirekt*]),
      table.cell([-5/-3]),

      table.cell(colspan: 2, [*Liegender Schütze*]),
      table.cell([+2]),

      table.cell(colspan: 2, [*Reaktionsfeuer*]),
      table.cell([-1]),

      table.cell(colspan: 2, [*Schnelle Bewegung*]),
      table.cell([-2]),

      table.cell(colspan: 2, [*Schnellschuss*]),
      table.cell([-2]),

      table.cell(colspan: 2, [*Unhandliche Waffe*]),
      table.cell([-3]),
    )
  ],
)

#sheet_block(
  [Nahkampf-Modifikatoren],
  [
    #table(
      columns: (10%, 1fr, 30%),
      stroke: (x, y) => (
        top: if y > 0 { luma(200) },
      ),
      align: (left, left, center),

      table.cell(colspan: 2, [*Aktive Tarnung*]),
      table.cell([+2]),

      table.cell(colspan: 2, [*Angriffsbewegung*]),
      table.cell([+2]),

      table.cell(colspan: 2, [*Größenunterschied*]),
      table.cell([+2/Stufe]),

      table.cell(colspan: 2, [*Multiple Gegner*]),
      table.cell([+2/Modell]),

      table.cell(colspan: 2, [*Unhandliche Ausrüstung*]),
      table.cell([-3]),
    )
  ],
)

#sheet_block(
  [Trefferzonen],
  image("Grafiken/Abbildungen/trefferzonen.svg", alt: "Trefferzonen", width: 100%),
)
