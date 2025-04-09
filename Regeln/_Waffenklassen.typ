#import "universalis.typ" as uni

#uni.table_h(
  columns: (auto, 1fr, 1fr),
  align: center + top,

  table.header([*Klasse*], [*Nahkampf*], [*Fernkampf*]),

  table.cell(
    rowspan: 4,
    align: horizon,
    "I",
  ),

  "Knüppel",
  "Maschinenpistole",

  "Messer",
  "Pistole",

  "Schlagring",
  "Schleuder",

  "",
  "Wurfstern",

  table.cell(
    rowspan: 4,
    align: horizon,
    "II",
  ),

  "Morgenstern",
  "Armbrust",

  "Schwert",
  "Bogen",

  "Speer",
  "Gewehr",

  "",
  "Speer",

  table.cell(
    rowspan: 4,
    align: horizon,
    "III",
  ),

  "Axt",
  "Granatwerfer",

  "Hellebarde",
  "Maschinengewehr",

  "Vorschlaghammer",
  "",

  "Zweihänder",
  "",

  table.cell(
    rowspan: 2,
    align: horizon,
    "IV",
  ),

  "Kettensäge",
  "Panzerfaust",

  "",
  "Scharfschützengewehr",

  table.cell(
    rowspan: 3,
    align: horizon,
    "V",
  ),

  "kleiner Baum",
  "Arbalest",

  "Straßenschild",
  "Lafettengeschütz",

  "",
  "Panzerkanone",
)
