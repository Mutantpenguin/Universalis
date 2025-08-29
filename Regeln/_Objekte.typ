#import "universalis.typ" as uni

#uni.table_h(
  columns: (auto, auto, 1fr),
  align: (left, center, left),
  table.header([*Objekt*], [*AP-Kosten*], [*Voraussetzungen*]),

  [Hebel],
  [2],
  [-],

  [Keypad],
  [1],
  [Code bekannt],

  [Opferaltar],
  [3],
  [Paraphernalien vorhanden],

  [Schalter],
  [1],
  [-],

  [Terminal],
  [2],
  [Code bekannt],

  [Torwächter],
  [2],
  [
    - Passwort bekannt
    - Gegenstand vorhanden
  ],

  [
    zu öffnende Objekte

    bspw. Tür, Truhe, Kiste, Fenster
  ],
  [1],
  [
    #uni.table_n(
      columns: (auto, 1fr),
      align: left + top,
      [unverschlossen],
      [-],
      [verschlossen],
      [Schlüssel/Keycard vorhanden / KO-2],
      [verschlossen, befestigt],
      [Schlüssel/Keycard vorhanden / KO-4],
      [verschlossen, gepanzert],
      [Schlüssel/Keycard vorhanden / KO-6],
    )
  ],
)
