#import "universalis.typ" as uni

#uni.table_h(
  columns: (auto, auto, auto, auto, 1fr),
  align: left + top,
  table.header([*Geländetyp*], [*Passierbarkeit*], [*Deckung*], [*Sicht*], [*Regeln*]),

  [Befestigte Stellung],
  [normal],
  [massiv],
  [4\"],
  [-],

  [Dickicht],
  [normal],
  [weich],
  [8\"],
  [-],

  [Gebäude],
  [normal],
  [hart],
  [6\"],
  [-],

  [Gewässer],
  [schwierig],
  [-],
  [-],
  [-],

  [Krater],
  [schwierig],
  [hart],
  [-],
  [Deckung wirkt nur gegen Beschuss von außerhalb.],

  [Ruine],
  [schwierig],
  [hart],
  [4\"],
  [Teilweise zerstörte Gebäude zählen auch zu diesem Geländetyp.],

  [Schützengraben],
  [schwierig],
  [hart],
  [4\"],
  [-],

  [Straße],
  [normal],
  [-],
  [-],
  [-],

  [Sumpf],
  [unpassierbar],
  [-],
  [-],
  [-],

  [Wald],
  [schwierig],
  [hart],
  [6\"],
  [-],
)

