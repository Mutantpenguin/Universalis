#import "universalis.typ" as uni

#uni.table_h(
  columns: (auto, 1fr),
  align: left + top,
  table.header([*Objekt*], [*Bedingungen*]),

  "Hebel",
  "-",

  "Keypad",
  "Code bekannt",

  "Opferaltar",
  "Paraphernalien vorhanden",

  "Schalter",
  "-",

  "Terminal",
  "Code bekannt",

  "Torwächter",
  [
    - Passwort bekannt
    - Gegenstand vorhanden
  ],

  [
    zu öffnende Objekte

    bspw. Tür, Truhe, Kiste, Fenster
  ],
  [
    #uni.table_n(
      columns: (auto, 1fr),
      align: left + top,
      "unverschlossen",
      "-",
      "verschlossen",
      "Schlüssel/Keycard vorhanden / KO-2",
      "verschlossen, befestigt",
      "Schlüssel/Keycard vorhanden / KO-4",
      "verschlossen, gepanzert",
      "Schlüssel/Keycard vorhanden / KO-6",
    )
  ],
)
