#import "@preview/in-dexter:0.7.0": *
#import "universalis.typ" as uni

#show: uni.style

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

#let title = [
  Universalis
]

#set document(
  title: title,
  author: "Markus Lobedann <markus.lobedann@gmail.com>",
  description: "Ein universeller Tabletop Skirmisher.",
)

#place(
  top,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #align(
    center,
    text(font: "Nova Round", size: 40pt)[
      *#title*
    ],
  )

  *Universalis* versucht ein universeller Tabletop Skirmisher für 28mm zu sein, der kleine Spiele mit wenigen Modellen in den Vordergrund stellt.
  Er ist nicht auf ein konkretes Szenario zugeschnitten und kann in jedem beliebigen Universum spielen.

  *Universalis* versucht in keinster Weise ein Turniersystem zu sein oder perfekt ausbalancierte Spiele zu bieten.
  Ihr sollt stattdessen eine spannende Geschichte erleben mit all ihren Hochs und Tiefs, egal wie sie konkret ausgeht.

  Eine der grundlegenden Ideen hinter *Universalis* ist es, beliebige Modelle einzusetzen um interessante Gruppen aufzustellen, ohne in irgendeiner Art und Weise eingeschränkt zu werden.
  WYSIWYG ist zwar eine tolle Sache und empfohlen, aber in keinster Weise vorgeschrieben.
  Niemand darf erwarten, dass man seine existieren Modelle (in die man viel Arbeit gesteckt hat) nur wegen eines neuen Spiels ersetzt oder umbaut.

  Damit alle Spaß haben, sollten Modelle halbwegs realistisch ausgerüstet werden und nicht mit beliebig vielen Nahkampfwaffen, Fernkampfwaffen und Ausrüstungsgegenständen überhäuft werden um auf jede Situation eine Antwort zu haben.
  Weniger ist oft mehr.

  Am Ende sollte jederzeit der gesunde Menschenverstand mitspielen und der Spaß am kontinuierlichen Spiel im Vordergrund stehen.

  Also:

  1. Nehmt eure schönsten Modelle
  2. Stellt coole Teams zusammen
  3. Erzählt eine spannende Geschichte
  4. Habt Spaß!

]

#outline(
  title: "Inhaltsverzeichnis",
  depth: 2,
)

= Was braucht man

+ Ein Universum.

  Wie bitte?

  Ja, ein Universum.

  Es muss nicht unbedingt ein großes oder komplettes Universum sein, aber ein bisschen sollte schon existieren.
// TODO Was ist ein Universum?

+ Ein Tisch mit einer Fläche von mindestens 36" x 36" welche für das eigentliche Spielfeld benötigt wird.

  Mehr wird jedoch dringend empfohlen um ausreichend Platz für die Regeln, Karten, Würfel und anderes Spielzubehör zu haben.

  #image("Grafiken/Abbildungen/spielfeld.svg", alt: "Spielfeld")

+ Ausreichend #uni.lnk("Geländestücke") um die Fläche gut zu füllen.

+ #block(
    breakable: false,
    [
      Jeder Spieler erhält ein Maßband oder -stab mit Markierungen in Abständen von einem halben Zoll.

      #align(
        center,
        grid(
          columns: 2,
          image("Grafiken/Abbildungen/maßband.svg", alt: "Maßband", width: 60%), image("Grafiken/Abbildungen/maßstab.svg", alt: "Maßstab", width: 50%),
        ),
      )
    ],
  )

+ Für jeden Spieler mindestens 2 #uni.lnk("Modelle") und dazugehörige #uni.lnk("Einheitenkarte", alt: "Einheiten-") und #uni.lnk("Aktivierungskarte", alt:"Aktivierungskarten").

+ #block(
    breakable: false,
    [
      Mindestens einen W12 und pro Modell jeweils mindestens einen weißen und einen roten W6.
      Mehr Würfel schaden nie.

      #align(
        center,
        grid(
          columns: 3,
          image("Grafiken/Abbildungen/w12_weiß.svg", alt: "W12", width: 50%),
          image("Grafiken/Abbildungen/w6_weiß.svg", alt: "W6 weiß", width: 50%),
          image("Grafiken/Abbildungen/w6_rot.svg", alt: "W6 rot", width: 50%),
        ),
      )
    ],
  )

+ Des weiteren werden Token für die folgenden Zustände benötigt:

  #uni.table_h(
    columns: (30%, 70%),
    align: (center + horizon, left + horizon),
    table.header([*Symbol*], [*Bedeutung*]),

    image("Grafiken/Token/brennen.svg", alt: "Brennen"),
    uni.lnk("Brennen"),

    image("Grafiken/Token/feuerbereitschaft.svg", alt: "Feuerbereitschaft"),
    uni.lnk("Fernkampf-Aktionen", alt: "Feuerbereitschaft"),

    image("Grafiken/Token/panik.svg", alt: "Panik"),
    uni.lnk("Panik"),

    image("Grafiken/Token/gift.svg", alt: "Gift"),
    uni.lnk("Vergiftung", alt: "Gift"),

    image("Grafiken/Token/nachladen.svg", alt: "Nachladen"),
    uni.lnk("Nachladen"),

    image("Grafiken/Token/schnell.svg", alt: "Schnell"),
    uni.lnk("Schnelle Bewegungen", alt: "Schnelle Bewegung"),

    image("Grafiken/Token/schock.svg", alt: "Schock"),
    uni.lnk("Schock"),

    image("Grafiken/Token/tarnung.svg", alt: "Tarnung"),
    uni.lnk("Tarnung"),

    image("Grafiken/Token/verteidigung.svg", alt: "Verteidigung"),
    uni.lnk("Nahkampf-Aktionen", alt: "Verteidigung"),
  )

Die einzelnen Zustände werden in ihren entsprechenden Abschnitten im Verlauf der Regeln erläutert.

= Das Spiel

== Fraktionen
<Fraktionen>

Jeder Spieler entscheidet sich für eine Fraktion, mit deren Einheiten er eine Gruppe aufbauen möchte.

== Gruppen

Eine Gruppe wird immer für genau eine Fraktion aufgestellt und besteht aus 2 oder mehr #uni.lnk("Modelle", alt: "Modellen").

Jeder Spieler verfügt über genau 1 Gruppe die genau 1 #uni.lnk("Gruppenführer") beinhalten muss.

== Gruppenführer
<Gruppenführer>

Genau ein Modell jeder Gruppe muss der Gruppenführer sein.

Er wird unter anderem dafür benötigt die #uni.lnk("Aufstellen-der-Modelle", alt: "Aufstellungsreihenfolge") zu bestimmen.

Jede Fraktion hat ihre eigene Regelung wer der Gruppenführer ist und wie gegebenenfalls ein Stellvertreter bestimmt wird.

== Einheitenkarte
<Einheitenkarte>
#index[Einheitenkarte]

Die Einheitenkarte ist ein zentraler Bestandteil des Spiels und beinhaltet alle spielrelevanten Werte eines Modells.
Auf der Rückseite beinhaltet sie außerdem eventuelle Sonderregeln der verwendeten #uni.lnk("Waffen"), #uni.lnk("Rüstungen"), #uni.lnk("Ausrüstung") und #uni.lnk("Eigenschaften").

Es bietet sich an die Einheitenkarten in Klarsichthüllen unterzubringen.
So ist gewährleistet, dass sie nicht kaputt gehen und während des Spiels können Notizen mit einem abwischbaren Stift darauf vorgenommen werden.

#align(
  center,
  image("Grafiken/Abbildungen/einheitenkarte_übersicht.svg", alt: "Aufbau Einheitenkarte"),
)

#block(
  breakable: false,
  uni.table_h(
    columns: (30%, 70%),
    align: (center + horizon, left + horizon),
    table.header([*Nr.*], [*Bedeutung*]),

    "1.",
    [#uni.lnk("Trefferpunkte")],

    "2.",
    [Name des Modells],

    "3.",
    [#uni.lnk("Attribute")],

    "4.",
    [#uni.lnk("Wahrnehmungsbereich")],

    "5.",
    [#uni.lnk("Gefahrenbereich")],

    "6.",
    [#uni.lnk("Modell-Typen", alt: "Typ des Modells")],

    "7.",
    [#uni.lnk("Größenprofil")],

    "8.",
    [#uni.lnk("Bewegungsart")],

    "9.",
    [#uni.lnk("Geschwindigkeit")],

    "10.",
    [#uni.lnk("Eigenschaften")],

    "11.",
    [#uni.lnk("Waffen")],

    "12.",
    [#uni.lnk("Rüstungen")],

    "13.",
    [#uni.lnk("Ausrüstung")],

    "14.",
    [#uni.lnk("Schadensprofil")],

    "15.",
    [#uni.lnk("Rüstungsprofil")],

    "16.",
    [Punkte],

    "17.",
    [#uni.lnk("Disziplinen und Kräfte")],

    "18.",
    [#uni.lnk("Fraktionen")],
  ),
)

== Aktivierungskarte
<Aktivierungskarte>

Die Aktivierungskarte zu jedem Modell wird zur Bestimmung der #uni.lnk("Aktivierungsreihenfolge") verwendet.

#align(
  center,
  image("Grafiken/Abbildungen/aktivierungskarte.svg", alt: "Aufbau Aktivierungskarte"),
)

Um nicht die Einheitenkarte zu Rate ziehen zu müssen wird auf ihr auch die AGI des Modells angezeigt.

= Modelle
<Modelle>

Alle im Spiel vorhandenen Einheiten die auch über eine #uni.lnk("Einheitenkarte") verfügen benötigen ein Modell, welches sie auf dem Spielfeld repräsentiert.

== Profile
<Profile>
#index[Profile]

Im Profil sind alle Werte eines Modells beschrieben, die sich auf seine körperlichen Eigenschaften beziehen.
Diese können sowohl angeboren als auch antrainiert sein.

Dazu gehören:

+ #uni.lnk("Modell-Typen")
+ #uni.lnk("Geschwindigkeit")
+ #uni.lnk("Trefferpunkte")
+ #uni.lnk("Attribute")
+ #uni.lnk("Größenprofil")

== Modell-Typen
<Modell-Typen>
#index[Modell-Typen]

Modelle werden in die Typen *Standard*, *Koloss* und *Begleiter* unterschieden.
*Koloss* und *Begleiter* unterliegen dabei zusätzlichen Regeln.

Siehe @fig-modell-typen.

#figure(
  placement: bottom,
  scope: "parent",
  uni.table_h(
    columns: (10%, 20%, 50%, 20%),
    align: left + horizon,
    table.header([*Symbol*], [*Name*], [*Beschreibung*], [*Größenprofil*]),

    image("Grafiken/Modell/Standard.svg", alt: "Standard"),
    "Standard",
    "Umfasst alles von normalen Soldaten bis hin zu gepanzerten Anzügen.",
    "klein bis groß",

    image("Grafiken/Modell/Begleiter.svg", alt: "Begleiter"),
    [#uni.lnk("Begleiter")],
    "Umschreibt alle Modelle die durch ein anderes Modell ferngesteuert werden.",
    "klein bis riesig",

    image("Grafiken/Modell/Koloss.svg", alt: "Koloss"),
    [#uni.lnk("Kolosse", alt: "Koloss")],
    "Sind unter Anderem große servounterstützte Panzeranzüge oder große biologische Kreaturen.",
    "groß bis riesig",
  ),
  caption: "Modell-Typen",
) <fig-modell-typen>

== Geschwindigkeit
<Geschwindigkeit>
#index[Geschwindigkeit]

Gibt an, wie weit sich ein Modell mit einer Aktion in Zoll bewegen kann.
Sie wird mit GK abgekürzt.

Siehe auch #uni.lnk("Bewegung").

== Trefferpunkte
<Trefferpunkte>
#index[Trefferpunkte]

Sie stehen für die Menge an #uni.lnk("Schadensanwendung", alt: "Schaden"), die ein Modell erleiden kann, bevor es aus dem Spiel entfernt wird.

Auf der #uni.lnk("Einheitenkarte") werden die Trefferpunkte als Kreise und in zwei verschiedenen Farben dargestellt:

#block(
  breakable: false,
  uni.table_v(
    columns: (20%, 80%),
    align: left + top,

    [*Weiss*],
    "Normale Trefferpunkte",

    [*Orange*],
    [
      Kritische Trefferpunkte

      Sobald ein Modell nur noch über kritische Trefferpunkte verfügt, verfällt es in den #uni.lnk("Kritisch", alt: "kritischen Zustand").
    ],
  ),
)

Die maximale Menge an Trefferpunkten eines Modells liegt bei 20.

== Attribute
<Attribute>
#index[Attribute]

Jedes Modell verfügt über einen festen Satz an Attributen.

#block(
  breakable: false,
  uni.table_h(
    columns: (20%, 80%),
    align: (center + horizon, left + horizon),
    table.header([*Kürzel*], [*Beschreibung*]),

    [*AGI*] + [#index[AGI]] + [#index("Attribute", "AGI")],
    [*Agilität*] + "\nSteht für das Reaktionsvermögen des Modells. Siehe z.B. " + [#uni.lnk("Reaktionen")] + " und " + [#uni.lnk("Bewegungstest")] + ".",

    [*NK*] + [#index[NK]] + [#index("Attribute", "NK")],
    [*Nahkampf*] + "\nStellt die Nahkampffähigkeit des Modells dar. Siehe " + [#uni.lnk("Nahkampf")] + ".",

    [*FK*] + [#index[FK]] + [#index("Attribute", "FK")],
    [*Fernkampf*] + "\nStellt die Fernkampffähigkeit des Modells dar. Siehe " + [#uni.lnk("Fernkampf")] + ".",

    [*KO*] + [#index[KO]] + [#index("Attribute", "KO")],
    [*Konstitution*] + "\nDrückt nicht nur aus wie stark ein Modell, sondern auch wie widerstandsfähig es ist. Siehe z.B. " + [#uni.lnk("Tragkraft")] + ".",

    [*WN*] + [#index[WN]] + [#index("Attribute", "WN")],
    [*Wahrnehmung*] + "\nBeschreibt, wie gut das Modell seine Sinneswahrnehmungen verarbeiten kann. Siehe z.B. " + [#uni.lnk("Wahrnehmungsbereich")] + " und " + [#uni.lnk("Tarnung")] + ".",

    [*EH*] + [#index[EH]] + [#index("Attribute", "EH")],
    [*Entschlossenheit*] + "\nDie Fähigkeit eines Modells, psychische oder mentale Konflikte zu bewältigen. Siehe z.B. " + [#uni.lnk("Gefahrenbereich")] + " oder " + [#uni.lnk("Panik")] + ".",
  ),
)

#uni.example(
  uni.table_h(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    table.header([*AGI*], [*NK*], [*FK*], [*KO*], [*WN*], [*EH*]),
    "4",
    "2",
    "2",
    "3",
    "3",
    "3",
  ),
  caption: "normaler Mensch",
)

== Größenprofil
<Größenprofil>
#index[Größenprofil]

// Modelle werden in 4 verschiedene Größenprofile gegliedert:

// [%unbreakable%header,cols="^1,^1,^4,^2,^1",frame=ends]
// |===

// |Symbol
// |Name
// |Beschreibung
// |Base
// |Höhe

// |image:Grafiken/Größe/klein.svg[klein,40]
// |klein
// |Alles kleiner als einschließlich 1m
// |≤25mm
// |1"

// |image:Grafiken/Größe/mittel.svg[mittel,40]
// |mittel
// |Alles zwischen 1m und 2,5m.
// |25mm - <40mm
// |2"

// |image:Grafiken/Größe/groß.svg[groß,40]
// |groß
// |Alles zwischen 2,5m und 3,5m.
// |40mm - <60mm
// |3"

// |image:Grafiken/Größe/riesig.svg[riesig,40]
// |riesig
// |Alles höher als einschließlich 3,5m.
// |≥60mm
// |4"

// |===

Jedes Modell wird hierbei wie ein kleiner Zylinder mit der Breite der Base und der angegebenen Höhe betrachtet.
Das Größenprofil eines Modells ist somit also abstrakt und entspricht nicht dem tatsächlichen Modell.

#figure(
  image("Grafiken/Abbildungen/größenprofil.svg", alt: "Größenprofil", width: 100%),
  caption: "Die grauen Zylinder veranschaulichen die Größenprofile",
)

Dies bringt den Vorteil, dass es nun egal ist welche Modelle verwendet werden da überstehende Waffen, Gliedmassen etc. für bspw. #uni.lnk("Sichtlinie", alt: "Sichtlinien") keine Rolle mehr spielen.

== Profilmodifikatoren
<Profilmodifikatoren>
#index[Profilmodifikatoren]

Manche #uni.lnk("Rüstungen", alt: "Rüstung"), #uni.lnk("Waffen", alt: "Waffe"), #uni.lnk("Ausrüstung") oder #uni.lnk("Eigenschaften", alt: "Eigenschaft") kann Auswirkungen auf das Profil eines Modells haben.

Diese können entweder permanent oder temporär sein:

=== Permanent

Gelten dauernd und werden auf der #uni.lnk("Einheitenkarte") direkt in das Profil mit eingerechnet.

=== Temporär

Temporäre Profilmodifikatoren sind auf der #uni.lnk("Einheitenkarte") nicht im Profil mit eingerechnet.
Sie kommen nur zur Anwendung wenn die Ausrüstung aktiv angewendet ist.

= Grundregeln

== Aktionspunkte
<Aktionspunkte>
#index[Aktionspunkte]

Modelle verfügen über Aktionspunkte (abgekürzt als AP), die in verschiedenen Phasen des Spiels für #uni.lnk("Aktionen und Reaktionen") ausgegeben werden können.

Neben jedes Modell muss ein weißer W6 gelegt werden der die aktuell noch verfügbaren Aktionspunkte anzeigt.
Er wird gegen einen roten W6 ausgetauscht wenn das Modell in einen #uni.lnk("Kritisch", alt: "kritischen Zustand") verfällt.

Alle Modelle haben pro Runde 6 AP.
Die einzige Ausnahme sind #uni.lnk("Begleiter") mit nur 2 AP.

*Ein Modell kann nie über mehr als 12 Aktionspunkte verfügen, egal durch welche Spielmechanik oder Ausrüstung hervorgerufen.*

== Aktionen und Reaktionen
<Aktionen-und-Reaktionen>

Aktionen und Reaktionen beschreiben die Tätigkeiten, die von Modellen ausgeführt werden können.

Sie dürfen von jedem Modell durchgeführt werden sofern die nötigen Voraussetzungen erfüllt sind wie bspw. das Vorhandensein von „Händen“ um eine Waffe abzufeuern und so weiter.
Hier ist der gesunde Menschenverstand gefragt.

Ein Modell kann in jeder Runde nur so lange Aktionen und Reaktionen ausführen bis seine Aktionspunkte verbraucht sind.
Bei jeder Aktion und Reaktion sind die entsprechenden Kosten an Aktionspunkten mit dem Zeichen ⊙ angegeben.

=== Aktionen
<Aktionen>
#index[Aktionen]

Aktionen können immer von einem Modell ausgeführt werden, wenn es sich gerade in der eigenen Initiativephase befindet.
Bis auf wenige Ausnahmen können Aktionen beliebig aneinander gereiht und kombiniert werden.

Sie sind an folgendem Symbol zu erkennen:

#align(
  center,
  uni.img.activity.aktion,
)

=== Reaktionen
<Reaktionen>
#index[Reaktionen]

Wenn eine Reaktion durchgeführt werden soll, kann dies nur als Antwort auf eine Aktion eines anderen Modells in dessen Initiativephase geschehen.
Sie sind in der Regel an Bedingungen geknüpft.

Um eine Reaktion durchzuführen muss ein Modell über Aktionspunkte verfügen.
Dies ist unabhängig davon, ob das Modell in dieser Runde bereits eine Initiativephase hatte, oder diese noch stattfindet.
Um auf Aktionen zu reagieren, die nach der Initiativephase der aktuellen Runde stattfinden, müssen also Aktionspunkte aufbewahrt werden.

Sie sind an folgendem Symbol zu erkennen:

#align(
  center,
  uni.img.activity.reaktion,
)

=== Übersicht

#uni.table_h(
  columns: (3fr, 2fr, 2fr),
  align: (x, y) => {
    if x > 0 {
      center + horizon
    } else {
      left + horizon
    }
  },
  table.header([], [*Aktionen*], [*Reaktionen*]),

  "Ausrüstung",
  ref(<Ausrüstung-Aktionen>, form: "page"),
  "",

  "Bewegen",
  ref(<Bewegung-Aktionen>, form: "page"),
  ref(<Bewegung-Reaktionen>, form: "page"),

  "Eigenschaften",
  ref(<Eigenschaften-Aktionen>, form: "page"),
  "",

  "Fernkampf",
  ref(<Fernkampf-Aktionen>, form: "page"),
  ref(<Fernkampf-Reaktionen>, form: "page"),

  "Kräfte",
  ref(<Kraft-Aktionen>, form: "page"),
  ref(<Kraft-Reaktionen>, form: "page"),

  "Nahkampf",
  ref(<Nahkampf-Aktionen>, form: "page"),
  ref(<Nahkampf-Reaktionen>, form: "page"),

  "Tarnung",
  ref(<Tarnung-Aktionen>, form: "page"),
  ref(<Tarnung-Reaktionen>, form: "page"),
)

== Sichtfeld
<Sichtfeld>
#index[Sichtfeld]

Jedes Modell hat ein Sichtfeld von 360°.
Es ist somit egal wohin ein Modell ausgerichtet ist.

== Sichtlinie
<Sichtlinie>
#index[Sichtlinie]

Die Sichtlinie zu einem #uni.lnk("Modelle", alt: "Modell"), #uni.lnk("Geländestücke", alt: "Geländestück") oder #uni.lnk("Objekte", alt: "Objekt") ist gegeben, wenn es möglich ist eine gerade und nicht unterbrochene Linie zu ihm zu ziehen.
Bei Modellen bedeutet dies, dass die Linie ihr #uni.lnk("Größenprofil") trifft.

#figure(
  image("Grafiken/Abbildungen/sichtlinie.svg", alt: "Sichtlinie", width: 80%),
  caption: "Die Linie trifft nicht das Modell selbst, aber sein Größenprofil. Es kann somit eine Sichtlinie zu ihm gezogen werden.",
)

Sichtlinien können durch #uni.lnk("Sichtweite") eingeschränkt sein.
Befreundete Modelle behindern sie nicht.


== Tragkraft
<Tragkraft>
#index[Tragkraft]

Jedes Modell kann nur eine gewisse Menge an Ausrüstung tragen, ohne, dass davon AGI und GK negativ beeinflusst werden.

Für verschiedene Modelltypen wird die in Kilogramm angegebene Tragkraft dabei unterschiedlich berechnet.

#uni.table_v(
  columns: (auto, 1fr, 1fr, 1fr),
  align: left + top,

  [*Modelltyp*],
  "Standard",
  "Begleiter",
  "Koloss",

  [*Tragkraft in kg*],
  $ "KO"² $,
  $ "KO"² $,
  $ ( "KO" * 2 ) ² $,
)

Bis zu diesem Wert erleidet das Modell keine negativen Auswirkungen.
Wird er jedoch überschritten werden AGI und GK jeweils um 1 verringert.
Wird er um das doppelte überschritten, werden beide um jeweils 2 verringert usw.

Auf der #uni.lnk("Einheitenkarte") ist dies bei den Attributen bereits eingerechnet.

#uni.example(
  align(
    left,
    [
      Ein Modell hat eine KO von 5 und damit eine Tragkraft von 25kg.

      Ab einer Belastung von über 25kg werden die genannten Attribute um jeweils 1 verringert, über 50kg um jeweils 2, über 75kg um jeweils 3 usw.
    ],
  ),
)

== Gefahrenbereich
<Gefahrenbereich>
#index[Gefahrenbereich]

Der Gefahrenbereich beschreibt den Umkreis um ein Modell, in dem es auf gegnerische Modelle reagieren muss.
Der Radius in Zoll berechnet sich, indem die EH von 12 abgezogen und der Wert halbiert wird:

$ "Radius in Zoll" = (12 - "EH") / 2 $

Auf der #uni.lnk("Einheitenkarte") wird der Gefahrenbereich mit diesem Symbol angegeben:

#align(
  center,
  image("Grafiken/Modell/gefahrenbereich.svg", alt: "Gefahrenbereich"),
)

=== Unmittelbare Bedrohung
<Unmittelbare-Bedrohung>
#index[Unmittelbare Bedrohung]

Ein gegnerisches Modell, welches sich zum Beginn der eigenen Initiativephase innerhalb des Gefahrenbereichs am nächsten zum eigenen Modell aufhält, wird _Unmittelbare Bedrohung_ genannt.
Sollten sich gegnerische Modelle im Basekontakt befinden sind sie, losgelöst von dem Radius des Gefahrenbereichs, automatisch unmittelbare Bedrohungen.

Möchte das Modell eine unmittelbare Bedrohung ignorieren, muss es dafür einen erfolgreichen EH-Test durchführen.
Misslingt dieser Test muss ein Angriff gegen die unmittelbare Bedrohung erfolgen, egal ob per #uni.lnk("Nahkampf"), #uni.lnk("Fernkampf"), #uni.lnk("Ausrüstung"), #uni.lnk("Eigenschaften") oder #uni.lnk("Disziplinen-und-Kräfte", alt: "Kräften").

Pro Initiativephase ist nur maximal 1 Versuch erlaubt und notwendig.

== Wahrnehmungsbereich
<Wahrnehmungsbereich>
#index[Wahrnehmungsbereich]

Der Wahrnehmungsbereich umfasst alles um ein Modell in #uni.lnk("Sichtlinie") in einem gewissen Radius.

#figure(
  image("Grafiken/Abbildungen/wahrnehmungsbereich.svg", alt: "Wahrnehmungsbereich"),
  caption: "Wahrnehmungsbereich, welcher durch Bäume eingeschränkt wird.",
)

Der Radius berechnet sich dabei folgendermaßen:

$ "Radius in Zoll" = "WN" * 2 $

Im #uni.lnk("Kritisch", alt: "Kritischen Zustand") wird der Radius des Wahrnehmungsbereichs halbiert (aufgerundet).

Auf der #uni.lnk("Einheitenkarte") wird der Radius des Wahrnehmungsreich mit diesem Symbol angegeben:

#align(
  center,
  image("Grafiken/Modell/wahrnehmungsbereich.svg", alt: "Wahrnehmungsbereich"),
)

== Entfernungen messen
<Entfernungen-messen>
#index[Entfernungen messen]

Alle Entfernungen dürfen jederzeit gemessen werden.

Die Entfernungen zwischen Modellen werden von den Rändern der Bases gemessen.

#figure(
  image("Grafiken/Abbildungen/entfernungen_messen.svg", alt: "Entfernungen messen", width: 80%),
  caption: "Entfernung zwischen 2 Modellen",
)

== Würfelwürfe
<Würfelwürfe>
#index[Würfelwürfe]

Es werden nur W12 verwendet.

Vom Tisch gefallene Würfel zählen nicht, und müssen erneut gewürfelt werden.

Grundsätzlich werden die folgenden beiden Arten von Würfen unterschieden:

=== Attributswurf
<Attributswurf>
#index[Attributswurf]

Attributswürfe werden in der Form [Attributskürzel]-Wurf angegeben.
So wird bspw. für einen Attributswurf auf Konstitution nur „KO-Wurf“ geschrieben.

Es wird immer der aktuelle Attributswert genommen der auch gegebenenfalls durch Effekte im Spiel modifiziert wurde.
Abhängig von verschiedenen Eigenschaften, Boni und bestimmten Regeln kann der zu erreichende Wert je nach Situation noch zusätzlich variieren.

Sollte ein zu erreichender Wert kleiner/gleich 0 sein, entfällt der Wurf und gilt als Misserfolg.

Der Wurf wird mit 1W12 durchgeführt.
Sofern das Ergebnis unter/gleich dem Wert liegt ist es ein Erfolg, ansonsten ein Misserfolg.

=== Vergleichender Wurf
<Vergleichender-Wurf>
#index[Vergleichender Wurf]

Bei einem vergleichendem Wurf wird für 2 konkurrierende Modelle jeweils 1W12 gewürfelt und jeweils ein Wert hinzuaddiert.

Abhängig von der Situation werden verschiedene Werte hinzuaddiert, durchaus auch unterschiedliche Werte je Modell.
Abhängig von verschiedenen Eigenschaften, Boni und bestimmten Regeln kann der zu addierende Wert je nach Situation noch zusätzlich variieren.

Das Modell mit dem höheren Ergebnis gewinnt den Wurf.

= Spielablauf
<Spielablauf>
#index[Spielablauf]

Das Spiel ist in mehrere Phasen unterteilt die nacheinander abgehandelt werden.

+ Spielfeldaufbau
+ Missionsauswahl
+ Vorbereiten-der-Gruppe
+ Aufstellen-der-Modelle
+ Runden
  - Initiativephasen
  - Rundenende

== Spielfeldaufbau
<Spielfeldaufbau>
#index[Spielfeldaufbau]

Beide Spieler bauen gemeinsam das Spielfeld mit #uni.lnk("Geländestücke", alt: "Geländestücken") auf bis sie damit einverstanden sind.

Die Fläche des Spielfeldes muss exakt 36" x 36" betragen.

== Missionsauswahl
<Missionsauswahl>
#index[Missionsauswahl]

Jeder Spieler wählt geheim und unabhängig vom anderen Spieler eine Mission aus.
Danach teilen sie sich gegenseitig ihre jeweilige Mission mit.

Als nächstes werden alle Missionsspezifischen Änderungen am Spielfeld vorgenommen.
Etwaige Probleme bei kollidierenden Missionsanforderungen sollten gemeinschaftlich gelöst werden.

== Vorbereiten der Gruppe
<Vorbereiten-der-Gruppe>
#index[Vorbereiten der Gruppe]

Bevor die Modelle aufgestellt werden muss eine Gruppe noch verschiedene Vorbereitungen treffen.

- Zuteilung von #uni.lnk("Begleiter", alt: "Begleitern")
- Auswahl der #uni.lnk("Kraft-Auswahl", alt: "Kräfte")

== Aufstellen der Modelle
<Aufstellen-der-Modelle>
#index[Aufstellen der Modelle]

Beide Spieler führen einen vergleichenden Wurf auf die EH des jeweiligen Gruppenführers durch.
Bei Gleichstand gewinnt das Modell mit der höheren EH.
Sollte sie identisch sein entscheidet der Zufall wer gewinnt.

Der Gewinner des Wurfs markiert zuerst entsprechend seiner Mission seine Aufstellungszone, danach ist der Verlierer damit dran.
Als nächstes stellt der Gewinner alle seine Modelle auf, danach der Verlierer.

Losgelöst von der gewählten Mission dürfen Modelle nie näher als 6" an gegnerische Modelle aufgestellt werden.

== Runden
<Runden>
#index[Runden]

Innerhalb einer Runde hat jedes Modell eine Initiativephase.
Die Runde ist erst dann beendet, wenn jedes Modell seine Initiativephase durchgeführt hat.

=== Rundenbeginn
<Rundenbeginn>
#index("Runden", "Beginn")

Zum Beginn einer Runde müssen folgende Punkte beachtet werden:

- Die AP jedes Modells werden wieder aufgefüllt.
  Bis zu 3 nicht verbrauchte AP aus der Vorrunde werden addiert.
  Siehe auch Rundenende.
- Modelle mit #uni.lnk("Schock", alt: "Schock-Token") verlieren automatisch pro Token 1 AP.

=== Aktivierungsreihenfolge
<Aktivierungsreihenfolge>
#index("Runden", "Reihenfolge")

Die Spieler nehmen die #uni.lnk("Aktivierungskarte", alt: "Aktivierungskarten") ihrer sich noch im Spiel befindlichen Modelle und wählen verdeckt eine aus.

Die Aktivierungskarten werden gleichzeitig aufgedeckt und für die Modelle ein vergleichender Wurf auf AGI durchgeführt.
Der Gewinner hat zuerst seine Initiativephase, danach direkt der Verlierer.
Bei Gleichstand gewinnt das Modell mit der höheren AGI.
Sollte auch sie identisch sein entscheidet der Zufall wer gewinnt.

Die gerade aufgedeckten Aktivierungskarten werden nun beiseite gelegt.

Dies passiert solange, bis ein Spieler keine Aktivierungskarten mehr hat. Der andere Spieler aktiviert nun etwaige weitere Modelle in beliebiger Reihenfolge.

== Initiativephasen
<Initiativephasen>
#index[Initiativephasen]
#index("Runden", "Initiativephase")

Eine Initiativephase ist der Zeitpunkt, an dem ein Modell mit seinen AP Aktionen ausführen kann.

Zusätzlich können andere Modelle, egal ob sie bereits ihre Initiativephase hatten oder nicht, unter bestimmten Voraussetzungen Reaktionen durchführen.

Zum Beginn der Initiativephase eines Modells müssen folgende Punkte beachtet werden:

+ eventuelle Token für #uni.lnk("Schnelle Bewegungen", alt: "schnelle Bewegung"), #uni.lnk("Nahkampf-Aktionen", alt: "Verteidigung") oder #uni.lnk("Fernkampf-Aktionen", alt: "Feuerbereitschaft") werden entfernt
+ eventuelle #uni.lnk("Vergiftung") kommt zur Anwendung
+ eventuelles #uni.lnk("Brennen") kommt zur Anwendung

== Rundenende
<Rundenende>
#index("Runden", "Ende")

Wenn einer der Spieler aufgeben möchte wäre nun der Zeitpunkt dafür.
Das Spiel endet dann automatisch sofort und der Spieler, welcher aufgegeben hat, verliert.

Ansonsten werden für jeden Spieler die Siegesbedingungen seiner Mission überprüft und das Spiel gegebenenfalls beendet.

Wenn es weitergeht, werden je Modell bis zu 3 nicht verbrauchte AP in die nächste Runde übernommen.
Hier bietet es sich an einen W6 in der korrekten Farbe (siehe #uni.lnk("Kritisch", alt: "Kritischer Zustand")) mit der übernommenen Menge an AP an das jeweilige Modell zu dem bereits vorhandenen dazu zu legen.
Ein Modell kann dabei nie über mehr als 12 Aktionspunkte verfügen.
Siehe dazu auch #uni.lnk("Aktionspunkte").

= Eigenschaften
<Eigenschaften>
#index[Eigenschaften]

Eigenschaften beschreiben alles Erlernte oder Angeborene eines Modells das über einfache #uni.lnk("Attribute") hinausgeht.
Außerdem können sie über eventuelle #uni.lnk("Profilmodifikatoren") verfügen.

Jede Spielmechanik die über Eigenschaften hinaus geht sollte als #uni.lnk("Disziplinen-und-Kräfte", alt: "Kraft") dargestellt werden.

== Aktionen
<Eigenschaften-Aktionen>

#uni.action(
  "Eigenschaft anwenden",
  "X",
  [
    Das Modell wendet eine Eigenschaft an.
    Die dafür nötigen AP-Kosten sind bei der Eigenschaft angegeben.
  ],
)

== Regeln
<Regeln>
#index("Eigenschaften", "Regeln")

Eine Eigenschaft verfügt immer über einen Namen der grob umschreibt was diese Eigenschaft umfasst.
Ausserdem kann eine Eigenschaft über eine Stufe verfügen.

Was die Eigenschaft für Auswirkungen hat und wie die Stufe zu behandeln ist, muss dem Regeltext der Eigenschaft entnommen werden.

Ein Modell welches eine Eigenschaft in mehreren Stufen besitzt profitiert nur von der höchsten Stufe.

#uni.example(
  align(
    left,
    [
      Ein normaler Mensch erhält die Eigenschaft „Bewährter Fernkämpfer II“.

      In ihr ist beschrieben, dass das Modell den FK-Wurf bis zu 2 mal wiederholen darf.
    ],
  ),
)

== Einmalnutzung
<Eigenschaften-Einmalnutzung>
#index("Einmalnutzung", "Eigenschaften")
#index("Eigenschaften", "Einmalnutzung")

Bestimmte Eigenschaften gelten nicht dauerhaft sondern müssen bewusst eingesetzt werden.
Ihr Einsatz ist nur in einer begrenzten Anzahl möglich.

Auf der #uni.lnk("Einheitenkarte") ist dies mit kreisförmigen Markern unmittelbar beim Namen der Eigenschaft vermerkt.
Die Anzahl an leeren Markern zeigt an, wie oft die Eigenschaft noch verwendet werden kann.

Bei jeder Verwendung muss ein Marker gestrichen werden.

#uni.example(
  align(
    left,
    [
      Für eine Regeneration die 3x verwendet werden kann.

      #image("Grafiken/Abbildungen/einmalnutzung_eigenschaft.jpg", alt: "Einmalnutzung Eigenschaft")
    ],
  ),
)

== AP-Kosten
<Eigenschaften-AP-Kosten>
#index("Eigenschaften", "AP-Kosten")

Wenn eine Eigenschaft AP-Kosten hat, muss die Aktion _Eigenschaft anwenden_ ausgeführt werden um sie zu benutzen. Ansonsten ist keine Aktion für die Anwendung notwendig.

= Bewegung
<Bewegung>
#index[Bewegung]

Durch das Ausgeben von Aktionspunkten für Bewegungsaktionen kann ein Modell entsprechend bewegt werden.

Bei Reaktionen kann auf jede Bewegungsaktion einzeln reagiert werden.
Mehrere aufeinander folgende Bewegungsaktionen können jedoch zu einer durchgehenden Aktion zusammengefasst werden, auf die dann auch nur einmal reagiert werden kann.

Der Zielpunkt einer einzelnen oder auch durchgehenden Bewegungsaktion muss noch vor der Bewegung festgelegt werden, damit der sich aus der Entfernung ergebende Modifikator für etwaige Reaktionen bestimmt werden kann.

== Bewegungsart
<Bewegungsart>

Jedes Modell hat eine Bewegungsart welche vorgibt, wie es sich grundsätzlich bewegen kann.

// [%unbreakable%header,cols="^1,1,3",frame=ends]
// |===

// |Symbol
// |Name
// |Bedeutung

// |image:Grafiken/Bewegung/beine.svg[Beine,40]
// |Beine
// a|
// * Standard Bewegungsart für Modelle.
// * Bietet weder spezielle Vorteile noch Nachteile.

// |image:Grafiken/Bewegung/flug.svg[Flug,40]
// |Flug
// a|
// * Ignoriert <<Passierbarkeit>> von <<Geländestücke,Geländestücken>>.
// * In jeder Runde muss als erste Aktion immer eine volle Bewegung in Blickrichtung ausgeführt werden.
// * Kann Nahkampf nur mit anderen fliegenden Modellen durchführen.

// |image:Grafiken/Bewegung/kette.svg[Kette,40]
// |Kette
// a|
// * Bewegungstests für <<Passierbarkeit>> dürfen einmal wiederholt werden.

// |image:Grafiken/Bewegung/rad.svg[Rad,40]
// |Rad
// a|
// * Auf dem <<Geländetypen,Geländetyp>> Straße wird die Bewegung um 50% (abgerundet) erhöht.

// |image:Grafiken/Bewegung/schweben.svg[Schweben,40]
// |Schweben
// a|
// * Ignoriert <<Passierbarkeit>> von <<Geländestücke,Geländestücken>>.
// * Im Nahkampf wird das Modell als eine Stufe Größer behandelt. Siehe <<Größenprofil>> und <<Größenunterschiede>>.

// |image:Grafiken/Bewegung/stationär.svg[Stationär,40]
// |Stationär
// a|
// * Kann nicht bewegt werden.

// |===

== Bewegungstest
<Bewegungstest>
#index[Bewegungstest]

Der Bewegungstest besteht aus einem AGI-Wurf und muss in bestimmten Situationen durchgeführt werden.

== Aktionen
<Bewegung-Aktionen>

#uni.action(
  "Drehen",
  "0",
  [
    Kostet keine AP, zählt aber dennoch als eine eigene Aktion.
  ],
)

#uni.action(
  "Normale Bewegung",
  "1|2",
  [
    Das Modell bewegt sich entsprechend seiner GK.
    Die AP-Kosten sind 1⊙ falls das Modell steht und 2⊙ falls es #uni.lnk("Liegende Modelle", alt: "liegt").

    Die Bewegung darf niemals in Basekontakt mit einem gegnerischem Modell enden, es muss immer ein Abstand von mindestens 1" eingehalten werden.
  ],
)

#uni.action(
  "Angriffsbewegung",
  "WK",
  [
    Die Angriffsbewegung funktioniert wie eine ganz normale Bewegung, ihre Kosten entsprechen aber der Waffenklasse der zu verwendenden Nahkampfwaffe. Die eigentliche Bewegung ist somit kostenlos.

    Wenn sie in einem Basekontakt mit einem gegnerischen Modell endet wird sie automatisch zu einem #uni.lnk("Nahkampf-Aktionen", alt: "Angriff").
  ],
)

#uni.action(
  "Aus Nahkampf lösen",
  "2|3",
  [
    Mit dieser Aktion kann sich ein Modell aus einem #uni.lnk("Nahkampf") lösen, muss vorher aber den Test für eine #uni.lnk("Unmittelbare Bedrohung", alt: "unmittelbare Bedrohung") durchführen.
    Wenn er misslingt passiert nichts und es werden keine AP ausgegeben.

    Wenn er gelingt bewegt es sich wie bei einer normalen Bewegung, die Kosten sind allerdings um 1⊙ erhöht.
  ],
  condition: "Das Modell muss sich im Nahkampf befinden.",
)

#uni.action(
  "Hinlegen",
  "1",
  [
    Das Modell gilt als #uni.lnk("Liegende Modelle", alt: "liegend").
  ],
)

#uni.action(
  "Aufstehen",
  "1",
  [
    Das Modell gilt als stehend.
  ],
)

#uni.action(
  "Objekt benutzen",
  "1",
  [
    Benutzen eines #uni.lnk("Objekte", alt: "Objekts").
  ],
  condition: "Kann nur in direktem Basekontakt mit einem Objekt eingesetzt werden.",
)

== Reaktionen
<Bewegung-Reaktionen>

#uni.reaction(
  "Beschuss Ausweichen",
  "1",
  [
    Wenn das Modell einen vergleichenden Wurf auf AGI gewinnt erhält der Schütze -1 auf seinen FK-Wurf.
  ],
  condition: [
    - Kann von einem Modell durchgeführt werden, welches Ziel eines Fernkampfangriffs ist.
      Der Schütze muss sich im #uni.lnk("Wahrnehmungsbereich") befinden.
    - Nicht bei #uni.lnk("Liegende Modelle", alt: "liegenden") Modellen.
    - Nur bevor der Schütze seinen FK-Wurf durchführt.
  ],
)

== Springen
<Springen>
#index[Springen]
#index("Bewegung", "Springen")

Ein Modell kann nicht springen, wenn es #uni.lnk("Liegende Modelle", alt: "liegt").

Zwischenräume zwischen #uni.lnk("Geländestücke", alt: "Geländestücken") welche kleiner oder gleich der #uni.lnk("Geschwindigkeit") eines Modells sind können von diesem ignoriert werden.

Bei größeren Distanzen bis maximal der doppelten Geschwindigkeit muss das Modell einen #uni.lnk("Bewegungstest") ablegen.
Wenn er misslingt #uni.lnk("Herunterfallen", alt: "fällt") das Modell herunter.

== Vertikale Bewegung
<Vertikale-Bewegung>
#index[Vertikale Bewegung]
#index("Bewegung", "Vertikal")

Ohne spezielle Ausrüstung können sich Modelle vertikal nur an Leitern und vergleichbarem bewegen.
Die Distanz wird ganz normal wie jede andere Bewegung gemessen.

== Klettern
<Klettern>
#index[Klettern]
#index("Bewegung", "Klettern")

Jedes Modell kann ohne spezielle Ausrüstung oder Eigenschaften auf oder herunter von #uni.lnk("Geländestücke", alt: "Geländestücken") bis zu seinem doppelten #uni.lnk("Größenprofil") klettern.

Die vertikale Distanz wird dafür doppelt berechnet.

== Herunterfallen
<Herunterfallen>
#index[Herunterfallen]
#index[Fallen]
#index("Bewegung", "Herunterfallen")

Wenn sich ein Modell über eine Kante hinaus bewegt kann es sich fallenlassen anstatt herunterzuklettern.

Bei einer Fallhöhe bis zur Höhe seines #uni.lnk("Größenprofil", alt: "Größenprofils") kann es dies einfach so machen.
Bei grösserer Fallhöhe muss es zunächst einen erfolgreichen EH-Test ablegen um sich herunterfallen zu lassen.

Die durch Herunterfallen zurückgelegte Distanz kostet keine AP.

=== Fallschaden
<Fallschaden>
#index[Fallschaden]
#index("Fallen", "Schaden")

Bis zu einer Fallhöhe in Höhe seines #uni.lnk("Größenprofil", alt: "Größenprofils") passiert einem fallenden Modell nichts.
Bis zur doppelten Höhe seines Größenprofils kann Schaden durch einen erfolgreichen Bewegungstest vermieden werden.
Darüber hinaus erleidet es automatisch einen Treffer.

Die Stärke des Treffers entspricht der KO des gefallenen Modells.
Der Schaden orientiert sich ebenfalls an der KO des Modells.

#uni.table_h(
  columns: (2fr, 1fr),
  align: center + top,

  table.header([*Fallhöhe*], [*Schaden*]),

  [*bis einschliesslich*] + "\nGrößenprofil",
  "kein Schaden",

  [*bis einschliesslich doppeltem*] + "\nGrößenprofil",
  "halbe KO\n(abgerundet)",

  [*größer als doppeltes*] + "\nGrößenprofil",
  "KO",
)

== Schnelle Bewegungen
<Schnelle-Bewegungen>
#index[Schnelle Bewegungen]
#index("Bewegung", "Schnell")

Wenn sich ein Modell innerhalb seiner Initiativephase mehr als 10" bewegt, gilt es als in schneller Bewegung.
Dabei wird die tatsächlich zurückgelegte Distanz gemessen.

Sie wird am Modell mit dem Schnell-Token dargestellt:

#align(
  center,
  image("Grafiken/Token/schnell.svg", alt: "schnell"),
)

Zum Beginn der nächsten Initiativephase eines Modells wird der Token wieder entfernt.

Sie kommt unter anderem beim #uni.lnk("Schnelle-Bewegungen-des-Ziels", alt: "Fernkampf") zur Anwendung.

== Liegende Modelle
<Liegende-Modelle>
#index[Liegende Modelle]
#index("Bewegung", "Liegend")

Liegende Modelle gelten als ein #uni.lnk("Größenprofil") kleiner als sie sind.
Kleine Modelle werden dadurch nicht noch kleiner.

Um darzustellen, dass ein Modell liegt, wird es auf den Bauch gelegt.

= Gelände <Gelände>
#index[Gelände]

Alles was sich auf dem Spielfeld befindet, und kein Modell eines Spielers ist, wird als #uni.lnk("Geländestücke", alt: "Geländestück") oder #uni.lnk("Objekte", alt: "Objekt") bezeichnet.

Grundsätzlich kann gesagt werden: je mehr Gelände umso besser.

== Geländestücke
<Geländestücke>
#index[Geländestücke]

Geländestücke sind räumlich begrenzte Abschnitte auf dem Spielfeld welche unter Umständen Sonderregeln unterliegen.

So brauchen bspw. keine einzelnen Bäume (die umkippen könnten) als Wald aufgestellt werden.
Stattdessen wird eine Fläche als Wald deklariert und die dazugehörigen Regeln gelten dort automatisch.

Das ist unabhängig davon, ob ein Modell sich in oder auf einem Geländestück befindet.
Befindet sich ein Modell darüber (weil es bspw. fliegt) ist es nicht davon betroffen.

Geländestücke gehören in der Regel einem #uni.lnk("Geländetypen") an.

== Geländetypen
<Geländetypen>
#index[Geländetypen]

Sie beinhalten Informationen zu #uni.lnk("Deckung"), #uni.lnk("Passierbarkeit"), #uni.lnk("Sichtweite") und eventuellen weiteren Sonderregeln.

Geländetypen sollten für ein Universum passend erweitert oder abgeändert werden um ein dem Universum entsprechendes Spielfeld zu schaffen.

Siehe #uni.lnk("Anhang-Geländetypen", alt: "Anhang: Geländetypen") für eine Übersicht allgemein nutzbarer Geländetypen.

== Deckung
<Deckung>
#index[Deckung]

Deckung kommt nur im #uni.lnk("Deckung-des-Ziels", alt: "Fernkampf") zur Anwendung.

Ein Geländestück bietet Deckung wenn:

- es sich zwischen dem Schützen und seinem Ziel befindet und das #uni.lnk("Größenprofil") des Ziels mindestens zur Hälfte verdeckt

oder

- das Ziel sich darin befindet

Sie kann im Fernkampf einen Bonus auf den Rüstungswurf geben der zur Anwendung kommt, wenn das Modell das Geländestück berührt oder sich darin befindet.

Es wird dabei zwischen 3 verschiedenen Stufen von Deckungen unterschieden:

// [%unbreakable,cols="2h,3,3,3",frame=ends]
// |===

// |Stufe
// ^|weich
// ^|hart
// ^|massiv

// |Beschreibung
// a|Alles was eigentlich nicht zur Abwehr von Beschuss geeignet ist.

// Dazu zählen auch befreundete Modelle die mindestens eine Stufe größer sind.
// |Kann Beschuss bedingt abhalten.
// |Ist zur direkten Abwehr von Beschuss geeignet.

// |Beispiele
// |Gebüsch, Zaun, Plastik, Blech, Möbel
// |Ziegelmauer, Holzhaus, Fässer, Kisten
// |Sandsackbarrieren, Beton, Stahl, befestigte Stellungen

// ^.^|Bonus auf Rüstungswurf
// ^.^|-
// ^.^|+1
// ^.^|+2

// ^.^|Modifikator im Fernkampf
// ^.^|-1
// ^.^|-2
// ^.^|-3

// |===

== Passierbarkeit
<Passierbarkeit>
#index[Passierbarkeit]

Passierbarkeit von Gelände wird in 3 verschiedene Arten unterschieden.

#uni.table_v(
  columns: (auto, 1fr),
  align: left + top,

  [*Normal*],
  "Es gibt keine Einschränkungen.",

  [*Schwierig*],
  [
    Jede Bewegungsaktion die in, aus oder durch diese Geländestück führt wird halbiert (aufgerundet).

    Auf Wunsch kann ein Bewegungstest abgelegt werden. Wenn er gelingt wird die Bewegung nicht halbiert, wenn er misslingt bleibt das Modell an seinem Platz, fällt, und gilt als #uni.lnk("Liegende Modelle", alt: "liegend").
  ],

  [*Unpassierbar*],
  "Dieses Gelände kann nicht betreten oder durchquert werden.",
)

== Sichtweite
<Sichtweite>
#index[Sichtweite]

In manchem Gelände ist die Sicht erschwert und #uni.lnk("Sichtlinie", alt: "Sichtlinien") dadurch ab einer gewissen Distanz vollständig blockiert.

Dies kommt zur Anwendung, wenn eine Sichtlinie von außerhalb eines Geländestücks in oder durch dieses gezogen wird und die angegebene Distanz erreicht wurde.

== Umgebungsbedingungen
<Umgebungsbedingungen>
#index[Umgebungsbedingungen]

Umgebungsbedingungen sollen die Umgebung darstellen in der das Gefecht stattfindet, ohne unter Anderem die Anzahl an Geländestücken unnötig zu erhöhen.

So könnte natürlich das gesamte Spielfeld mit viel Wald zugestellt werden.
Dies benötigt einerseits viele Geländestücke und erschwert andererseits das Spielgeschehen da permanent geschaut werden muss, ob sich ein Modell in einem Geländetyp befindet.

Um dies zu umgehen kann einfach das gesamte Spielfeld als ein spezifischer Geländetyp deklariert werden.
Er gilt dann für das gesamte Spielfeld.

== Objekte
<Objekte>
#index[Objekte]

Unter ihnen versteht man alle Gegenstände auf dem Spielfeld, die von einem Modell benutzt werden können, und deren Benutzung eine Wirkung nach sich zieht.
Sie können alleine stehen oder sind Bestandteil eines #uni.lnk("Geländestücke", alt: "Geländestücks").

Was genau ein Objekt konkret ausmacht wird durch gesunden Menschenverstand, Szenario, Universum oder nach Einigung der Spieler festgelegt.

Siehe #uni.lnk("Anhang-Objekte", alt: "Anhang: Objekte") für eine Übersicht allgemein nutzbarer Objekte.

#uni.example(
  align(
    left,
    [
      - Türen
      - Schalter und Hebel
      - Computer Terminals
    ],
  ),
)

=== Beschränkungen von Objekten

Die Benutzung von Objekten kann gewissen Beschränkungen unterliegen die erfüllt sein müssen, bevor die Wirkung des Objekts in Kraft tritt.

Die folgenden Beschränkungen sind möglich, auch in Kombination.

// [%unbreakable%header,cols="h,3,3",frame=ends]
// |===

// |Art
// |Beschränkung
// |Beispiele

// |Eigenschaft
// |Das Modell muss eine bestimmte Eigenschaft oder Mindeststufe darin besitzen.
// a|
// * _Hacking III_ um ein Terminal der Stufe III zu hacken.
// * _Schlossknacken_ um Schlösser zu knacken.

// |Schwierigkeit
// |<<Attributswurf>> mit optionalem Modifikator notwendig.
// a|
// * KO-Test um die Winde eines Falltors zu drehen.
// * WN-2-Test um ein elektronisches Schloss kurz zu schließen.

// |Komplex
// |Alles ist möglich.
// a|
// * Das Modell muss einen speziellen Gegenstand wie z.B. Schlüssel oder Keycard besitzen.
// * Ein konkret benanntes anderes Objekt wurde bereits benutzt.

// |===

= Schaden & Rüstung
<Schaden-und-Rüstung>
#index[Schaden]
#index[Rüstung]

Verschiedene Spielmechaniken erzeugen Schaden.
Dies kann ein Modell sein das ein anderes Modell #uni.lnk("Fernkampf", alt: "beschießt") oder im #uni.lnk("Nahkampf") angreift oder auch Effekte die im Spiel auftreten.

Schaden wird in erster Linie mit #uni.lnk("Rüstungen", alt: "Rüstung") abgewehrt.
Es kann aber auch #uni.lnk("Ausrüstung") geben welche dabei hilft.

== Schadensprofil
<Schadensprofil>
#index[Schadensprofil]

Ein Schadensprofil wird immer durch die Stärke, den Schaden und eventuellen #uni.lnk("Schadenseffekte", alt: "Schadenseffekten") angegeben.

#uni.table_h(
  columns: (auto, auto, 1fr),
  align: left + top,

  table.header([*Symbol*], [*Name*], [*Bedeutung*]),

  image("Grafiken/Waffe/stärke.svg", alt: "Stärke"),
  "Stärke",
  [erhöht die Chance beim #uni.lnk("Verletzungs-und-Rüstungswurf", alt: "Verletzungswurf")],

  image("Grafiken/Waffe/schaden.svg", alt: "Schaden"),
  "Schaden",
  "zugefügter Verlust an Trefferpunkten",
)

#uni.example(image("Grafiken/Abbildungen/schadensprofil.jpg", alt: "Schadensprofil"))

== Rüstungsprofil
<Rüstungsprofil>
#index[Rüstungsprofil]

Rüstungsprofile werden immer mit ihrem Schutz, der Schadensreduktion und eventuellen #uni.lnk("Schadenseffekte", alt: "Schadenseffekten") angegeben.

#uni.table_h(
  columns: (auto, 1fr, 2fr),
  align: left + top,

  table.header([*Symbol*], [*Name*], [*Bedeutung*]),

  image("Grafiken/Rüstung/schutz.svg", alt: "Schutz"),
  "Schutz" + index[Schutz],
  [erhöht die Chance beim #uni.lnk("Verletzungs-und-Rüstungswurf", alt: "Rüstungswurf")],

  image("Grafiken/Rüstung/schadensreduktion.svg", alt: "Schadensreduktion"),
  "Schadensreduktion" + index[Schadensreduktion],
  "Reduktion des Verlusts an Trefferpunkten",
)

#uni.example(image("Grafiken/Abbildungen/rüstungsprofil.jpg", alt: "Rüstungsprofil"))

== Schadenseffekte
<Schadenseffekte>
#index[Schadenseffekte]

Ein Schadens- oder Rüstungsprofil kann über Effekte verfügen.

Beim Verletzungswurf und Rüstungswurf werden alle zutreffenden Effekte des Schadensprofils und Rüstungsprofils angewendet.
Ein im Rüstungsprofil enthaltener Effekt neutralisiert dabei einen eventuell im Schadensprofil vorkommenden Effekt, so dass dieser nicht zur Anwendung kommt.

#uni.example(
  align(
    left,
    [
      Ein Modell wird mit einer Pistole mit dem Effekt „Explosiv“ beschossen.
      Der Angreifer dürfte nun normalerweise seine Stärke für den Verletzungswurf verdoppeln.
      Ist aber in der Rüstung des Verteidigers ebenso der Effekt „Explosiv“ gelistet, kommt dieser Effekt nicht zu Geltung.
    ],
  ),
)

=== Waffen und Rüstungen
<Schadenseffekte-Waffen-und-Rüstungen>

// [%unbreakable]
// --
// [%header,cols="^1,2,5",frame=ends]
// |===

// |Symbol
// |Name
// |Auswirkungen

// |image:Grafiken/Effekt/brand.svg[Brand,40]
// |Brand
// |Wenn das Modell überlebt erhält es einen Brandmarker. Siehe <<Brennen>>.

// |image:Grafiken/Effekt/erschütterung.svg[Erschütterung,40]
// |Erschütterung
// |Der Angreifer darf den Verteidiger zwingen den Rüstungswurf neu zu werfen, wobei das neue Wurfergebnis verwendet werden muss.

// |image:Grafiken/Effekt/explosiv.svg[Explosiv,40]
// |Explosiv
// |Die Stärke der Waffe wird für den Verletzungswurf verdoppelt.

// |image:Grafiken/Effekt/giftig.svg[Giftig,40]
// |Giftig
// |Wenn das Modell überlebt erhält es zusätzlich Giftmarker in Höhe der halben Differenz (aufgerundet) beim Verletzungs- und Rüstungswurf. Siehe <<Vergiftung>>.

// |image:Grafiken/Effekt/panzerbrechend.svg[Panzerbrechend,40]
// |Panzerbrechend
// |Der Schutz der Rüstung wird für den Rüstungswurf halbiert (aufgerundet).

// |image:Grafiken/Effekt/schrapnell.svg[Schrapnell,40]
// |Schrapnell
// |Boni auf den Rüstungswurf die durch <<Deckung>> oder <<Vorteile von Tarnung, Tarnung>> zustande kommen werden nicht angewendet.

// |image:Grafiken/Effekt/wucht.svg[Wucht,40]
// |Wucht
// |Der Verletzungswurf darf einmal neu gewürfelt werden. Das neue Wurfergebnis muss verwendet werden.

// |image:Grafiken/Effekt/zerfetzen.svg[Zerfetzen,40]
// |Zerfetzen
// |Wenn es zum Verlust von Trefferpunkten kommt muss der Verteidiger einen KO-Wurf ablegen. Wenn dieser misslingt wird der Verlust verdoppelt.

// |===
// --

=== Waffen
<Schadenseffekte-Waffen>

// [%unbreakable]
// --
// [%header,cols="^1,2,5",frame=ends]
// |===

// |Symbol
// |Name
// |Auswirkungen

// |image:Grafiken/Effekt/schock.svg[Schock,40]
// |Schock
// |Anstatt Trefferpunkte zu verlieren, erleidet das getroffene Modell eine Anzahl an <<Schock,Schocks>> in Höhe des Schadens.

// |image:Grafiken/Effekt/strukturschädigend.svg[Strukturschädigend,40]
// |Strukturschädigend
// |Waffen mit diesem Effekt fügen Modellen mit dem Effekt „Strukturverstärkt“ trotzdem den vollen Schaden zu.

// |===
// --

=== Rüstungen
<Schadenseffekte-Rüstungen>

// [%unbreakable]
// --
// [%header,cols="^1,2,5",frame=ends]
// |===

// |Symbol
// |Name
// |Auswirkungen

// |image:Grafiken/Effekt/adaptiv.svg[Adaptiv,40]
// |Adaptiv
// |Der Rüstungswurf darf einmal neu gewürfelt werden. Das neue Wurfergebnis muss verwendet werden.

// |image:Grafiken/Effekt/robust.svg[Robust,40]
// |Robust
// |Der Verteidiger darf den Angreifer zwingen den Verletzungswurf neu zu werfen, wobei das neue Wurfergebnis verwendet werden muss.

// |image:Grafiken/Effekt/strukturverstärkt.svg[Strukturverstärkt,40]
// |Strukturverstärkt
// |Modelle mit diesem Effekt erhalten von Waffen immer nur den halbierten (abgerundeten) Schaden.

// |===
// --

== Verletzungs- und Rüstungswurf
<Verletzungs-und-Rüstungswurf>
#index[Verletzungswurf]
#index[Rüstungswurf]

Beide Spieler führen einen vergleichenden Wurf durch.
Der Angreifer addiert die Stärke seiner Waffe, dies wird _Verletzungswurf_ genannt.
Der Verteidiger addiert den Schutz seiner Rüstung, dies wird _Rüstungswurf_ genannt.

Hierbei kommen alle Schadenseffekte zur Anwendung.

Sofern der Verteidiger über keine Rüstung verfügt addiert er stattdessen seine KO.
Sie wird auch verwendet, falls sie höher als der Schutz der Rüstung sein sollte.

Nun wird die folgende Tabelle konsultiert:

#uni.table_h(
  columns: (auto, 1fr),
  align: left + top,

  table.header([*Höheres Ergebnis*], [*Auswirkungen*]),

  "Verteidiger",
  "Nichts passiert.",

  "Gleichstand",
  [Der Verteidiger erleidet einen #uni.lnk("Schock").],

  "Angreifer",
  [Der Schaden kommt zur #uni.lnk("Schadensanwendung", alt: "Anwendung").],
)

== Schadensanwendung
<Schadensanwendung>
#index[Schadensanwendung]

Wenn Schaden zur Anwendung kommt, müssen entsprechend viele Trefferpunkte auf der #uni.lnk("Einheitenkarte") gestrichen werden.
Verfügt die Rüstung des Modells über eine Schadensreduktion, wird der Schaden um diesen Wert verringert.

Sinken die Trefferpunkte des Modells auf 0 oder darunter gilt es als #uni.lnk("Eliminiert", alt: "eliminiert").

Falls das Modell überlebt erleidet es einen #uni.lnk("Schock").
Wenn es ausserdem nur noch kritische #uni.lnk("Trefferpunkte") besitzt verfällt es nun in einen #uni.lnk("Kritisch", alt: "kritischen Zustand").

= Zustände

Modelle können sich durch verschiedene Spielmechaniken in einem Zustand befinden.

== Brennen
<Brennen>
#index[Brennen]
#index("Zustände", "Brennen")

Modelle mit einem Brandmarker gelten als _brennend_:

#align(
  center,
  image("Grafiken/Token/brennen.svg", alt: "Brennen"),
)

Sie können keine #uni.lnk("Aktionen und Reaktionen") ausführen.

Zum Beginn jeder ihrer Initiativephasen testen sie mit 1W12 auf der folgenden Tabelle:


#uni.table_h(
  columns: (auto, 1fr),
  align: (x, _) => {
    if x > 0 {
      left + top
    } else {
      center + top
    }
  },

  table.header([*Ergebnis*], [*Auswirkung*]),

  "1-8",
  [Das Modell erleidet einen automatischen Treffer mit dem #uni.lnk("Schadensprofil") der Waffe, die das Modell in Brand gesetzt hat. Falls es ihn überlebt bewegt es sich mit seiner vollen Bewegung W6 mal in eine zufällige Richtung und gibt dafür ganz normal AP aus.],

  "9-11",
  [Der Brandmarker wird vom Modell entfernt und es erleidet 1 #uni.lnk("Schock").],

  "12+",
  "Der Brandmarker wird entfernt.",
)

=== Hilfe durch befreundete Modelle

Jedes befreundete Modell in Basekontakt mit dem brennenden Modell gibt einen Bonus von +2 auf den Wurf.

== Eliminiert
<Eliminiert>
#index[Eliminiert]
#index("Zustände", "Eliminiert")

Eliminierte Modelle können weder Aktionen noch Reaktionen ausführen und nehmen damit nicht mehr aktiv am Spiel teil.

Um dies zu repräsentieren werden sie auf den Rücken gelegt und verbleiben auf dem Spielfeld.

Sobald ein Modell eliminiert wurde, muss für jedes andere Modell seiner Gruppe, in dessen #uni.lnk("Wahrnehmungsbereich") es sich befindet, getestet werden, ob es in #uni.lnk("Panik") verfällt.

== Kritisch
<Kritisch>
#index("Kritischer Zustand")
#index("Zustände", "Kritisch")

Der kritische Zustand wird automatisch angewendet, sobald ein Modell nur noch kritische #uni.lnk("Trefferpunkte") besitzt.

Das Modell erhält für den Rest des Spiels folgende Mali:

+ #uni.lnk("Attributswurf", alt: "Attributs-") und #uni.lnk("Vergleichender-Wurf", alt: "Vergleichende") Würfe sind um 2 erschwert
+ die #uni.lnk("Geschwindigkeit") wird halbiert (aufgerundet)
+ die Reichweite des #uni.lnk("Wahrnehmungsbereich", alt: "Wahrnehmungsbereichs") wird halbiert (aufgerundet)

Der weiße W6 für die Anzeige der Aktionspunkte wird nun für das Modell gegen einen roten W6 ausgetauscht.

Ein Modell kann nur einmal in den kritischen Zustand verfallen.
Würde dies ein weiteres mal passieren erleidet es stattdessen 1 #uni.lnk("Schock").

== Panik
<Panik>
#index[Panik]
#index("Zustände", "Panik")

Um zu testen ob ein Modell in Panik verfällt muss es einen Paniktest in Form eines EH-Tests absolvieren.
Wenn dieser misslingt verfällt das Modell in Panik und bekommt einen Panikmarker.

#align(
  center,
  image("Grafiken/Token/panik.svg", alt: "Panik"),
)

=== Auswirkungen von Panik

Modelle in Panik können keine Reaktionen durchführen.

Während jeder Aktivierung benutzen sie alle ihre AP um sich in Richtung der am nächsten gelegenen Spielfeldkante zu bewegen und das Spielfeld zu verlassen.

Sie ignorieren Gefahren, nutzen aber das Gelände entsprechend ihrer #uni.lnk("Bewegungsart") vernünftig aus.
Das heißt, sie springen in ihrer Panik nicht sinnlos von Gebäuden etc.

Am Ende ihrer Initiativephase kann für sie ein erneuter Paniktest durchgeführt werden.
Wenn er gelingt, wird der Panikmarker entfernt.

=== Modifikatoren

Sollten sich Modelle im Wahrnehmungsbereich befinden kommen folgende Modifikatoren zur Anwendung.
Modelle in Panik werden hierbei ignoriert.

#uni.table_h(
  columns: (auto, auto),
  align: center + top,

  table.header([*Typ*], [*Mod.*]),

  "das gerade eliminierte befreundete Modell",
  "-3",

  "andere eliminierte befreundete Modelle",
  "-2",

  "gegnerisches Modell",
  "-1",

  "befreundetes Modell",
  "+1",

  "befreundetes Modell im Basekontakt",
  "+3",
)

== Schock
<Schock>
#index[Schock]
#index("Zustände", "Schock")

Wenn ein Modell einen Schock erleidet verliert es sofort 1 AP.
Wenn es über keine AP mehr verfügt erhält es stattdessen 1 Schock-Token:

#align(
  center,
  image("Grafiken/Token/schock.svg", alt: "Schock"),
)

Wenn ein Modell zum Beginn einer Runde über Schock-Token verfügt, verliert es für jeden Token 1 AP und der Token wird entfernt.

Sollten noch Schock-Token übrig sein und das Modell verfügt über keine AP mehr, verbleiben die übrigen Token bis zur nächsten Runde um dann abgezogen zu werden.

== Vergiftung
<Vergiftung>
#index[Vergiftung]
#index("Zustände", "Vergiftung")

Modelle mit Giftmarkern zählen als _vergiftet_:

#align(
  center,
  image("Grafiken/Token/gift.svg", alt: "Gift"),
)

Zum Beginn ihrer Initiativephase entfernen sie 1 Giftmarker, und erleiden automatischen Schaden mit dem #uni.lnk("Schadensprofil") der Waffe, welche die Vergiftung verursacht hat.

= Waffen
<Waffen>

Als Waffe wird alles verstanden mit dem ein Modell Schaden austeilt, egal ob es von dem Modell getragen wird, als natürliche Waffe einfach zu ihm gehört oder wie eine Kanone an einem Fahrzeug ein fester Bestandteil davon ist.

Waffen verfügen über ein #uni.lnk("Schadensprofil") und eventuelle #uni.lnk("Profilmodifikatoren").

Weiterhin können für sie Regeln wie #uni.lnk("Indirekter-Fernkampf"), #uni.lnk("Dauerfeuer") oder #uni.lnk("Flächenwaffen", alt: "Flächenwaffe") infrage kommen.

== Fernkampfwaffen

Eine Schusswaffe verfügt zusätzlich über eine Reichweite in Form eines #uni.lnk("Reichweite", alt: "Reichweitenbandes") und einer Angabe für eventuelles #uni.lnk("Dauerfeuer").

== Nahkampfwaffen

Sie verfügen über kein Reichweitenband, da sie nur in direktem Basekontakt eingesetzt werden können.

== Wurfwaffen

Ihre Reichweite wird berechnet, die Anzahl an Bändern ist dabei aber immer 3.

Die Länge der Reichweitenbänder entspricht der KO des werfendes Modells, bei #uni.lnk("Waffen-Unhandlich", alt: "unhandlichen") Waffen wird sie mit 0,5 multipliziert (aufgerundet).

#uni.example(
  align(
    left,
    [
      Für einen Menschen mit KO von 5:

      #image("Grafiken/Abbildungen/wurfwaffe.jpg", alt: "Wurfwaffe")
    ],
  ),
)

== Waffenklassen

Durch Waffenklassen wird unterschieden wie groß eine Waffe bzw. wie komplex sie zu bedienen ist.
Je größer/komplexer desto höher die Waffenklasse.

Waffenklassen werden mit „WK“ abgekürzt.
WK I steht somit für Waffen der Klasse 1.

== Additive Stärke

Manche Waffen verfügen nicht über einen eigenen Stärke-Wert, sondern sind additiv.
Dies bedeutet, dass ihr Wert auf die KO des Modells aufaddiert wird.

== Unhandliche Waffen
<Waffen-Unhandlich>
#index("Unhandlich", "Waffen")
#index("Waffen", "Unhandlich")

Manche Waffen sind unhandlich und haben dadurch negative Auswirkungen im #uni.lnk("Fernkampf-Unhandlich", alt: "Fernkampf") und #uni.lnk("Nahkampf-Unhandlich", alt: "Nahkampf").

Auf der #uni.lnk("Einheitenkarte") wird dies mit einer Raute rechts oben neben der Waffenklasse ausgewiesen:

#align(
  center,
  image("Grafiken/Waffe/unhandlich.png", alt: "unhandlich"),
)

== Nachladen
<Nachladen>
#index[Nachladen]

Waffen die nachladen müssen besitzen das folgende Symbol.

#align(
  center,
  image("Grafiken/Waffe/nachladen.svg", alt: "Nachladen"),
)

Nach jedem Einsatz bekommt der Träger einen Nachlademarker und die Waffe kann erst wieder verwendet werden wenn für sie die Aktion #uni.lnk("Fernkampf-Aktionen", alt: "Nachladen") durchgeführt wurde:

#align(
  center,
  image("Grafiken/Token/nachladen.svg", alt: "Nachladen"),
)

== Einmalnutzung <Waffen-Einmalnutzung>
#index("Einmalnutzung", "Waffen")
#index("Waffen", "Einmalnutzung")

Bestimmte Waffen wie bspw. Speere, Granaten oder spezielle Munitionstypen können nur in einer begrenzten Anzahl eingesetzt werden.

Auf der #uni.lnk("Einheitenkarte") ist dies mit kreisförmigen Markern unmittelbar beim Namen der Waffe vermerkt.
Die Anzahl an leeren Markern zeigt an, wie oft die Waffe noch verwendet werden kann.

Bei jeder Verwendung muss ein Marker gestrichen werden.

#uni.example(
  align(
    left,
    [
      Für eine Granate die 4x verwendet werden kann.

      #image("Grafiken/Abbildungen/einmalnutzung_waffe.jpg", alt: "Einmalnutzung Waffe")
    ],
  ),
)

== Beispiele für Waffenklassen

// [%unbreakable%header,cols="^.^1,2,2",frame=ends]
// |===

// |Klasse
// |Nahkampf
// |Fernkampf

// .4+|I
// <|Knüppel
// |Maschinenpistole

// <|Messer
// |Pistole

// <|Schlagring
// |Schleuder

// |
// |Wurfstern

// .4+|II
// <|Morgenstern
// |Armbrust

// <|Schwert
// |Bogen

// <|Speer
// |Gewehr

// |
// |Speer

// .4+|III
// <|Axt
// |Granatwerfer

// <|Hellebarde
// |Maschinengewehr

// <|Vorschlaghammer
// |

// <|Zweihänder
// |

// .2+|IV
// <|Kettensäge
// |Panzerfaust

// |
// |Scharfschützengewehr

// .3+|V
// <|kleiner Baum
// |Arbalest

// <|Straßenschild
// |Lafettengeschütz

// |
// |Panzerkanone

// |===

= Rüstungen
<Rüstungen>
#index[Rüstungen]

Als Rüstung wird alles verstanden das ein Modell vor Schaden schützt, egal ob es von dem Modell als Kleidung getragen wird, als natürlicher Schutzpanzer einfach zu ihm gehört oder wie Panzerplatten an einem Fahrzeug ein fester Bestandteil davon sind.

Rüstungen verfügen über ein #uni.lnk("Rüstungsprofil") und eventuelle #uni.lnk("Profilmodifikatoren").

== Regeln
#index("Rüstung", "Regeln")

Jede Rüstung kann Regeln beinhalten.
Wenn dem so ist werden sie auf der Rückseite der #uni.lnk("Einheitenkarte") ausgegeben.

== Additiver Schutz

Manche Rüstungen verfügen nicht über einen eigenen Schutzwert, sondern sind additiv.
Dies bedeutet, dass ihr Wert auf die KO des Modells aufaddiert wird.

== Selbsttragend

Das Gewicht von selbsttragenden Rüstungen wird für die #uni.lnk("Tragkraft") eines Modells ignoriert.

= Fernkampf
<Fernkampf>
#index[Fernkampf]

Unter Fernkampf wird jeglicher Kampf mit einer #uni.lnk("Waffen", alt: "Waffe") verstanden der auf Distanz passiert.

== Durchführung

Um einen Fernkampf durchzuführen muss zunächst geprüft werden ob eine #uni.lnk("Sichtlinie") zum gewählten Ziel existiert.

Danach muss eine konkrete Waffe ausgewählt werden um mit ihrem #uni.lnk("Reichweite", alt: "Reichweitenband") den FK-Modifikator zu bestimmen bzw. ob das Ziel überhaupt in Reichweite ist.

Gegebenenfalls kommen weitere #uni.lnk("Fernkampf-Modifikatoren", alt: "Modifikatoren") zur Anwendung.

Nun wird ein FK-Wurf für das Modell durchgeführt.
Bei Erfolg wurde das Ziel getroffen und ein Treffer gelandet der zu einem #uni.lnk("Verletzungs-und-Rüstungswurf") führt.

== Aktionen
<Fernkampf-Aktionen>

#uni.action(
  "Normaler Schuss",
  "WK+1",
  [
    Das Modell führt einen Fernkampf durch.
  ],
)

#uni.action(
  "Feuerbereitschaft",
  "2",
  [
    Das Modell wählt eine seiner Schusswaffen und befindet sich damit maximal bis zum Beginn seiner nächsten Initiativephase in Feuerbereitschaft.
    Es verliert sie dann automatisch.

    Sie wird am Modell mit dem Feuerbereitschafts-Token dargestellt:
    #align(
      center,
      image("Grafiken/Token/feuerbereitschaft.svg", alt: "Feuerbereitschaft"),
    )

    Falls das Modell das Ziel irgendeiner erfolgreichen Aktion oder Reaktion eines gegnerischen Modells wird muss es einen EH-Test ablegen.
    Misslingt dieser verliert es die Feuerbereitschaft.
  ],
  condition: [
    - Nur mit Schusswaffen der WK I, II und III.
    - Kann nur sinnvoll als letzte Aktion innerhalb einer Initiativephase durchgeführt werden, da jede weitere Aktion oder Reaktion die Feuerbereitschaft automatisch beendet.
  ],
)

#uni.action(
  "Gezielter Schuss",
  "WK+2",
  [
    Das Modell führt einen Fernkampf durch und erhält +2 auf seinen FK-Wurf.
    Die Reichweitenbänder werden hierbei verdoppelt.
  ],
  condition: [
    Ist nicht in Kombination mit Dauerfeuer einsetzbar.
  ],
)

#uni.action(
  "Schnellschuss",
  "WK",
  [
    Das Modell führt einen Fernkampf durch und erhält -2 auf seinen FK-Wurf.
  ],
)

#uni.action(
  "Nachladen",
  "WK",
  [
    Die dafür nötigen AP-Kosten entsprechen der WK der Waffe für die der Token gilt.
    Der Token wird danach vom Modell entfernt.
  ],
  condition: [
    Diese Aktion kann nur von Modellen mit einem #uni.lnk("Nachladen", alt: "Nachlade-Token") durchgeführt werden.
  ],
)

== Reaktionen
<Fernkampf-Reaktionen>

#uni.reaction(
  "Reaktionsfeuer",
  "WK",
  [
    Das Modell führt einen Fernkampf mit der bei der Einnahme der Feuerbereitschaft gewählten Schusswaffe durch und erhält einen zusätzlichen Malus von -1 auf seinen FK-Wurf.

    Das Modell verliert danach automatisch seine Feuerbereitschaft.
  ],

  condition: [
    - Das Modell muss sich in Feuerbereitschaft befinden.
    - Der Beschuss darf nur auf ein gegnerisches Modell gerichtet sein, welches eine beliebige #uni.lnk("Bewegung-Aktionen", alt: "Bewegungsaktion") innerhalb des #uni.lnk("Wahrnehmungsbereich", alt: "Wahrnehmungsbereichs") durchführt.
    - Kann nicht mit #uni.lnk("Indirekter-Fernkampf", alt: "indirektem Fernkampf") genutzt werden.
  ],
)

== Erlaubte Waffen
#index("Fernkampf", "Erlaubte Waffen")

Im Fernkampf dürfen nur Waffen mit einem #uni.lnk("Reichweite", alt: "Reichweitenband"), nicht aber mit der Reichweite NK (=Nahkampf) verwendet werden.

== Trefferzonen
#index("Fernkampf", "Trefferzonen")
#index("Trefferzonen", "im Fernkampf")

Wenn das Ziel über #uni.lnk("Trefferzonen") verfügt muss die getroffene Trefferzone ausgewürfelt werden.

== Zielauswahl
<Zielauswahl>
#index[Zielauswahl]

Damit ein Ziel beschossen werden kann muss eine #uni.lnk("Sichtlinie") zu ihm gezogen werden können.

Sollte sich im #uni.lnk("Gefahrenbereich") keine #uni.lnk("Unmittelbare Bedrohung", alt: "unmittelbare Bedrohung") befinden (welche bekämpft werden müsste), kann das Ziel frei gewählt werden.

== Reichweite
<Reichweite>
#index("Fernkampf", "Reichweite")

Die Reichweite einer Waffe ist in Reichweitenbändern in der Form X/Y angegeben.
X gibt dabei an, wie groß die Reichweitenbänder in Zoll sind, Y wie oft diese anwendbar sind.

Auf der #uni.lnk("Einheitenkarte") wird dies unter folgendem Symbol ausgewiesen:

#align(
  center,
  image("Grafiken/Waffe/reichweite.svg", alt: "Reichweite"),
)

Pro vollständig ausgenutztem Reichweitenband erhält ein Modell einen Malus von -1 auf seinen FK-Wurf.

Eine Waffe kann nicht weiter als ihr maximales Reichweitenband verwendet werden.

#uni.example(
  align(
    left,
    [
      Eine Pistole verfügt über den Wert 8/3.
      Sie hat also 3 Reichweitenbänder, und kommt damit auf eine maximale Reichweite von 24".

      Der FK-Wurf für ein Ziel in einer Entfernung von 6" erhält keinen Malus, bei 17" würde sich ein Malus von -2 ergeben da sich das Ziel im 3. Reichweitenband befindet.
    ],
  ),
)

== Beschuss von Modellen im Nahkampf
#index("Fernkampf", "Modelle im Nahkampf")

Modelle die sich im Nahkampf befinden dürfen beschossen werden.

Ob das Modell oder eines seiner Nahkampfgegner getroffen wird entscheidet der Zufall wobei die Wahrscheinlichkeit für jedes Modell identisch ist.

Hierdurch können auch Modelle getroffen werden zu denen keine #uni.lnk("Sichtlinie") gezogen werden kann.

#uni.example(
  align(
    left,
    [
      Ein gegnerische Modell wird beschossen und es hat 2 Nahkampfgegner.
      Die Wahrscheinlichkeit, dass ein Modell getroffen wird beträgt 1/3.
    ],
  ),
)

== Beschuss von getarnten Modellen
#index("Fernkampf", "getarnte Modelle")

Es können nur #uni.lnk("Aufklärung", alt: "aufgeklärte") getarnte Modelle beschossen werden.

== Modifikatoren <Fernkampf-Modifikatoren>

=== Größe des Ziels
#index("Fernkampf", "Größe des Ziels")

Je nach #uni.lnk("Größenprofil", alt: "Größe") des Ziels ist es einfacher oder schwieriger zu treffen.

#uni.table_h(
  columns: (50%, 50%),
  align: center + top,

  table.header([*Größe*], [*Modifikator*]),

  "kleines Ziel",
  "-1",

  "mittleres Ziel",
  "±0",

  "großes Ziel",
  "+1",

  "riesiges Ziel",
  "+2",
)

=== Deckung des Ziels
<Deckung-des-Ziels>
#index("Fernkampf", "Deckung des Ziels")

Der durch eventuelle #uni.lnk("Deckung") angewandte Modifikator.

#uni.table_h(
  columns: (50%, 50%),
  align: center + top,

  table.header([*Stufe*], [*Modifikator*]),

  "weich",
  "-1",

  "hart",
  "-2",

  "massiv",
  "-3",
)

=== Unhandliche Waffen
<Fernkampf-Unhandlich>
#index("Unhandlich", "Waffen im Fernkampf")
#index("Fernkampf", "Unhandliche Waffen")

Sie erhalten bei Beschuss von kleinen und mittleren Zielen einen Malus von -3 auf den FK-Wurf.

=== Liegender Schütze
#index("Fernkampf", "Liegender Schütze")

Liegende Schützen erhalten +2 auf den FK-Wurf.

=== Schnelle Bewegungen des Ziels
<Schnelle-Bewegungen-des-Ziels>
#index("Fernkampf", "Schnelle Bewegungen des Ziels")

Auf Ziele, welche sich in #uni.lnk("Schnelle Bewegungen", alt: "schneller Bewegung") befinden, gibt es einen Malus von -2 auf den FK-Wurf.

== Indirekter Fernkampf
<Indirekter-Fernkampf>
#index[Indirekter Fernkampf]
#index("Fernkampf", "Indirekt")

Bei indirektem Fernkampf kann ein Punkt oder Modell auf dem Spielfeld beschossen werden der durch das Modell nicht einsehbar ist.

Er ist nicht mit der Aktion #uni.lnk("Fernkampf-Reaktionen", alt: "Reaktionsfeuer") kombinierbar.

Falls die Höhe der zwischen dem Schützen und dem Ziel befindlichen #uni.lnk("Geländestücke") mehr als die halbe maximale Reichweite der Waffe beträgt hat der Schuss keine Wirkung.

#uni.example(
  align(
    left,
    [
      Ein Granatwerfer hat eine Reichweite von 10/4 und somit eine maximale Reichweite von 40".
      Die maximale Höhe für den Schuss beträgt somit 20".
    ],
  ),
)

Der Trefferwurf für indirekten Fernkampf erhält immer einen Malus von -5.
Sofern der beschossene Punkt durch ein befreundetes Modell einsehbar ist wird nur ein Malus von -3 angewendet.
Weitere Mali durch Deckung kommen nicht zur Geltung.

Die Rüstungswürfe dadurch getroffener Modelle werden immer so behandelt als ob sie sich in massiver Deckung befinden.

Waffen welche für indirekten Fernkampf eingesetzt werden können besitzen das folgende Symbol.

#align(
  center,
  image("Grafiken/Waffe/indirekt.svg", alt: "indirekt"),
)

== Dauerfeuer
<Dauerfeuer>
#index[Dauerfeuer]
#index("Fernkampf", "Dauerfeuer")

Waffen können über den Wert „Dauerfeuer“ (DF) verfügen der im Bereich 1-4 liegt.
Jeder Punkt DF wird hierdurch als 1 zusätzlicher Schuss behandelt.

Auf der #uni.lnk("Einheitenkarte") wird dies mit den folgenden Symbolen ausgewiesen, wobei jedes Symbol für eine Stufe Dauerfeuer steht.

#align(
  center,
  grid(
    columns: 4,
    image("Grafiken/Waffe/dauerfeuer_1.png", alt: "Dauerfeuer", width: 70%),
    image("Grafiken/Waffe/dauerfeuer_2.png", alt: "Dauerfeuer", width: 70%),
    image("Grafiken/Waffe/dauerfeuer_3.png", alt: "Dauerfeuer", width: 70%),
    image("Grafiken/Waffe/dauerfeuer_4.png", alt: "Dauerfeuer", width: 70%),
  ),
)

Schüsse können dementsprechend auf 1 bis 5 Ziele aufgeteilt werden, wobei sich jedes Ziel bis zu maximal 1" vom letzten Ziel befinden darf.
Jeder Wechsel des Ziels führt zu einem kumulativen Malus von -1 auf den FK-Wurf.

Falls mehrere Schüsse einem Ziel zugeteilt werden, gibt jeder Schuss nach dem Ersten einen Bonus von +1 auf den FK-Wurf und +1 beim Verletzungswurf.
Es wird also nur 1 Schuss, dafür aber mit den beschriebenen Boni ausgewürfelt.

#uni.example(
  align(
    left,
    [
      Eine Maschinenpistole hat DF 3 und wird von einem Modell mit FK 5 abgefeuert.

      Entweder

      - Es feuert alle 4 Schuss auf ein Modell ab und erhält dadurch einen Bonus von +3 auf seinen FK-Wurf und +3 auf den anschließenden Verletzungswurf.

      oder

      - Es feuert jeweils 2 Schuss auf 2 verschiedene Ziele ab und erhält dadurch für beide Ziele einen Bonus von +1 auf seinen FK-Wurf (wobei sich für das zweite Ziel der Bonus durch den Zielwechsel aufhebt).
      Der Bonus von +1 für den Verletzungswurf gilt jedoch für beide Ziele.
    ],
  ),
)

== Flächenwaffen
<Flächenwaffen>
#index[Flächenwaffen]
#index("Fernkampf", "Flächenwaffe")

Flächenwaffen erzeugen an ihrem Einschlagpunkt eine Flächenwirkung die im jeweiligen Waffenprofil angegeben ist und eine kreisrunde Fläche beschreibt.

Auf der #uni.lnk("Einheitenkarte") wird dies mit dem folgendem Symbol ausgewiesen, wobei die Zahl den Radius in Zoll angibt.

#align(
  center,
  image("Grafiken/Waffe/radius.svg", alt: "Radius"),
)

Wenn bei einer Flächenwaffe der FK-Wurf misslingt, wird der gewürfelte Wert mit dem zu erreichenden verglichen.
Die Differenz in Zoll gibt an, wie weit der Einschlagpunkt in zufälliger Richtung vom eigentlichen Zielort entfernt platziert wird.
Die maximale Entfernung ist dabei die Hälfte (abgerundet) der geschossenen Distanz.

Sollte der Schütze den neuen Ort nicht einsehen können, muss von ihm aus eine gerade Linie dorthin gezogen werden.
Der Einschlagpunkt ist nun dort, wo diese Linie das erste #uni.lnk("Geländestücke", alt: "Geländestück") oder das erste Modell kreuzt.

Wenn die Fläche die Base eines Modells vollständig bedeckt, oder sich vollständig innerhalb der Fläche der Base befindet, wird das entsprechende Modell normal getroffen.
Ist nur eine teilweise Überlappung vorhanden wird der Schaden halbiert (aufgerundet).

Wenn das getroffene Modell Deckung berührt kommt diese voll zur Geltung.

= Nahkampf
<Nahkampf>
#index[Nahkampf]

Unter Nahkampf wird jeglicher Kampf mit einer #uni.lnk("Waffen", alt: "Waffe") verstanden der im Basekontakt passiert.

Der Basekontakt mit einem gegnerischem Modell bedeutet immer, dass sich beide Modelle im Nahkampf miteinander befinden.

Während des Nahkampfes sind für beide Modelle nur die folgenden Aktionen und Reaktionen erlaubt:

#uni.table_h(
  columns: 100%,
  align: center + horizon,
  table.header([*Aktionen*]),
  uni.lnk("Nahkampf-Aktionen", alt: "Angriff"),
  uni.lnk("Nahkampf-Aktionen", alt: "Verwegener Angriff"),
  uni.lnk("Bewegung-Aktionen", alt: "Aus Nahkampf lösen"),
  uni.lnk("Kraft-Aktionen", alt: "Kraft einsetzen"),
)

#uni.table_h(
  columns: 100%,
  align: center + horizon,
  table.header([*Reaktionen*]),
  uni.lnk("Nahkampf-Reaktionen", alt: "Gegenangriff"),
  uni.lnk("Nahkampf-Reaktionen", alt: "Gelegenheitsangriff"),
)

== Durchführung

Um einen Nahkampf durchzuführen, muss die Base des angreifenden Modells die Base des anzugreifenden Modells berühren.

Nun wird für beide Modelle ein vergleichender Wurf auf NK durchgeführt für den eventuelle #uni.lnk("Nahkampf-Modifikatoren", alt: "Modifikatoren") zur Anwendung kommen können.
Der Gewinner muss eine der Auswirkungen auswählen.

#uni.table_h(
  columns: (auto, 1fr),
  align: left + top,

  table.header([*Gewinner*], [*Auswirkungen*]),

  "Angreifer",
  [
    - einen #uni.lnk("Verletzungs-und-Rüstungswurf", alt: "Treffer") mit der zuvor ausgewählten Nahkampfwaffe landen
    - das verteidigende Modell #uni.lnk("Zurückstoßen", alt: "zurückstoßen")
    - eine #uni.lnk("Disziplinen und Kräfte", alt: "Kraft") mit der #uni.lnk("Kraft-Reichweite", alt: "Reichweite") _Berührung_ einsetzen
  ],

  "Verteidiger",
  [
    - Das angreifende Modell #uni.lnk("Zurückstoßen", alt: "zurückstoßen").
    - Nichts tun.
  ],

  "Gleichstand",
  "Nichts passiert.",
)

== Zurückstoßen
<Zurückstoßen>
#index[Zurückstoßen]
#index("Nahkampf", "Zurückstoßen")

Modelle können nur dann zurückgestoßen werden wenn ihr #uni.lnk("Größenprofil") gleich oder kleiner des stoßenden Modells ist.

Ein Modell zurück zu stoßen bedeutet, mit ihm eine #uni.lnk("Bewegung-Aktionen", alt: "Bewegungsaktion") durchzuführen welche vom Spieler des Nahkampfgegners kontrolliert wird.
Diese Bewegung kostet keine AP.

Dabei kommen die folgenden Ausnahmen zur Anwendung:

- Die Bewegung muss in gerade Linie erfolgen.
- Das Modell darf dadurch in Basekontakt mit anderen gegnerischen Modellen bewegt werden.
- Wenn es über eine Kante bewegt wird #uni.lnk("Herunterfallen", alt: "fällt") es herunter.

== Aktionen
<Nahkampf-Aktionen>

#uni.action(
  "Angriff",
  "WK",
  [
    Das Modell führt mit einem anderen Modell einen Nahkampf durch und gilt als der Angreifer.
  ],
)

#uni.action(
  "Verwegener Angriff",
  "WK+2",
  [
    Das Modell führt mit einem anderen Modell einen Nahkampf durch und gilt als der Angreifer.
    Es erhält +3 auf seinen NK-Wurf.

    Sollte es den Nahkampf verlieren und der Gegner wendet die Reaktion _Gegenangriff_ an verteidigt es sich mit NK von 0.
  ],
)

#uni.action(
  "Verteidigung",
  "2",
  [
    Das Modell befindet sich maximal bis zum Beginn seiner nächsten Initiativephase in Verteidigung.
    Es verliert sie dann automatisch.

    Sie wird am Modell mit dem Verteidigungs-Token dargestellt:
    #align(
      center,
      image("Grafiken/Token/verteidigung.svg", alt: "Verteidigung"),
    )

    Wenn es in einen Nahkampf verwickelt wird bekommt der Angreifer keinen eventuellen #uni.lnk("Bonus für den Angreifer", alt: "Bonus") für eine #uni.lnk("Bewegung-Aktionen", alt: "Angriffsbewegung").
    Das Modell verliert danach automatisch seine Verteidigung.

    Wenn das Modell beschossen wird oder Ziel einer Kraft ist muss es einen EH-Test ablegen.
    Misslingt dieser verliert es die Verteidigung.
    Es muss dafür nicht getroffen werden.
  ],
  condition: [
    Kann sinnvoll nur als letzte Aktion innerhalb einer Initiativephase durchgeführt werden.
    Jede weitere Aktion oder Reaktion beendet die Verteidigung automatisch.
  ],
)

== Reaktionen
<Nahkampf-Reaktionen>

#uni.reaction(
  "Gegenangriff",
  "WK",
  [
    Das Modell führt mit dem Modell auf welches reagiert wurde einen Nahkampf durch und gilt als der Angreifer.
  ],
  condition: [
    Kann nur unmittelbar nach einem Nahkampf durch den Verteidiger durchgeführt werden.
  ],
)

#uni.reaction(
  "Gelegenheitsangriff",
  "WK",
  [
    Das Modell führt mit dem sich aus dem Nahkampf lösenden Modell einen Nahkampf durch und gilt als der Angreifer.
    Das sich lösende Modell kämpft mit NK von 0.
  ],

  condition: [
    Kann durchgeführt werden, wenn sich ein gegnerisches Modell in Basekontakt aus dem Nahkampf löst.
  ],
)

== Erlaubte Waffen
#index("Nahkampf", "Erlaubte Waffen")

Im Nahkampf dürfen nur Waffen mit der Reichweite NK (=Nahkampf) verwendet werden.

== Trefferzonen
#index("Nahkampf", "Trefferzonen")
#index("Trefferzonen", "im Nahkampf")

Wenn der Verteidiger über #uni.lnk("Trefferzonen") verfügt muss die getroffene Trefferzone ausgewürfelt werden.

== Modifikatoren
<Nahkampf-Modifikatoren>

=== Bonus für den Angreifer
<Bonus-für-den-Angreifer>
#index("Nahkampf", "Bonus für den Angreifer")

Wenn der Angreifer den Angriff durch eine #uni.lnk("Bewegung-Aktionen", alt: "Angriffsbewegung") einleitet, erhält er einen Bonus von +2 auf seinen NK-Wurf.
Dies gilt nur wenn der Verteidiger sich nicht in Verteidigung befindet.

=== Multiple Gegner
#index("Nahkampf", "Multiple Gegner")

Für jedes befreundete Modell welches die Base des gegnerischen Modells berührt, gibt es einen Bonus von +2 auf den eigenen NK-Wurf.

=== Tarnung
#index("Nahkampf", "Tarnung")
#index("Tarnung", "Nahkampf")

Wenn ein getarntes Modell einen Angriff einleitet erhält es für die erste Runde einen Bonus von +2 auf seinen NK-Wurf.

=== Unhandliche Waffen und Ausrüstung
<Nahkampf-Unhandlich>
#index("Unhandlich", "Waffen und Ausrüstung im Nahkampf")
#index("Nahkampf", "Unhandliche Waffen und Ausrüstung")

Wenn ein Modell mindestens eine unhandliche Waffe oder anderen Ausrüstungsgegenstand trägt, erleidet es im Nahkampf einen Malus von -3.

=== Größenunterschiede
<Größenunterschiede>
#index[Größenunterschiede]
#index("Nahkampf", "Größenunterschiede")

Sollte eines der beteiligten Modelle größer als sein Gegenüber sein, erhält es einen Bonus von +2 auf seinen NK-Wurf für jede Stufe des Unterschieds.

Siehe auch #uni.lnk("Größenprofil") und #uni.lnk("Liegende Modelle", alt: "liegende Modelle").

== Nahkampf mit getarnten Modellen
#index("Nahkampf", "mit getarnten Modellen")

Es können nur #uni.lnk("Aufklärung", alt: "aufgeklärte") Modelle angegriffen werden.

== Waffenloser Nahkampf
#index("Nahkampf", "Waffenloser")

Standard-Modelle und Kolosse können auch ohne eine Nahkampfwaffe im Nahkampf kämpfen und Schaden austeilen.

Die Stärke entspricht der Konstitution.
Der Schaden berechnet sich durch die KO geteilt durch 3 (aufgerundet).
Die Waffenklasse ist abhängig von der Größe des Modells.

#uni.table_h(
  columns: (50%, 50%),
  align: center + top,

  table.header([*Größe des Modells*], [*Waffenklasse*]),

  "klein bis mittel",
  "I",

  "groß",
  "II",

  "riesig",
  "III",
)

#uni.example(
  align(
    left,
    [
      Für einen Infanteristen mit einer KO von 4.

      #image("Grafiken/Abbildungen/unbewaffnet.jpg", alt: "unbewaffnet")
    ],
  ),
)

= Tarnung
<Tarnung>
#index[Tarnung]

Tarnung wird in passive und aktive Tarnung unterschieden.
Weiterhin verfügt sie immer über eine Stufe um die Effektivität der Tarnung auszudrücken.

Sie wird am Modell mit dem Tarnungs-Token dargestellt:

#align(
  center,
  image("Grafiken/Token/tarnung.svg", alt: "Tarnung"),
)

Getarnte Modelle beginnen das Spiel automatisch als getarnt sofern alle Voraussetzungen erfüllt sind.

== Voraussetzungen

#uni.table_h(
  columns: (auto, 1fr),
  align: (x, _) => {
    if x > 1 {
      center + top
    } else {
      left + top
    }
  },

  table.header([*Typ*], [*Voraussetzung*]),

  "passiv",
  [Die Tarnung kann nur aktiviert werden, wenn sich das Modell in Basekontakt mit einem #uni.lnk("Geländestücke", alt: "Geländestück") (welches mindestens über die gleichen Ausmaße wie das #uni.lnk("Größenprofil") des Modell verfügt) befindet.],

  "aktiv",
  [Aktiv getarnte Modelle können ihre Tarnung überall aktivieren, losgelöst davon, ob sie sich an einem #uni.lnk("Geländestücke", alt: "Geländestück") befinden oder nicht.],
)

== Vorteile
#index("Tarnung", "Vorteile")

Getarnte Modelle können weder beschossen noch im Nahkampf angegriffen werden.
Damit das möglich ist, müssen sie zuerst #uni.lnk("Aufklärung", alt: "aufgeklärt") werden.

Sie können nicht durch Flächenwaffen getroffen werden.

Wenn ein getarntes Modell einen Angriff einleitet erhält es für die erste Runde einen Bonus von +2 auf seinen NK-Wurf.

=== Besondere Vorteile von aktiver Tarnung

Modelle mit aktiver Tarnung erhalten einen Bonus von +1 auf ihren Rüstungswurf wenn sie aufgeklärt sind.

Im Nahkampf erhalten sie einen zusätzlichen Bonus von +1 auf ihren NK-Wurf.

== Aufklärung
<Aufklärung>
#index[Aufklärung]
#index("Tarnung", "Aufklärung")

Aufgeklärte Modelle können normal beschossen oder im Nahkampf angegriffen werden.

Sie gelten solange als aufgeklärt bis sie 2 volle Bewegungsaktionen durchgeführt haben.
Danach wird ihre Tarnung automatisch wiederhergestellt sofern die Voraussetzungen dafür erfüllt sind.

Wenn ein getarntes Modell einen Angriff einleitet oder eine Fernkampfwaffe abfeuert wird es automatisch aufgeklärt.

Um ein getarntes Modell gezielt aufzuklären muss die Aktion „Aufklären“ ausgeführt werden.

== Aktionen
<Tarnung-Aktionen>

#uni.action(
  "Aufklären",
  "2+",
  [
    Aufklären bezieht sich immer auf ein konkretes getarntes gegnerisches Modell.

    Um ein getarntes Modell aufzuklären muss es sich im Wahrnehmungsbereich befinden und ein erfolgreicher WN-Wurf abgelegt werden, welcher um die Stufe der Tarnung erschwert ist.
    Bei Erfolg wurde das getarnte Modell aufgeklärt.

    Pro zusätzlich eingesetztem AP kann der WN-Wurf um 1 erleichtert werden.
  ],
)

== Reaktionen
<Tarnung-Reaktionen>

#uni.reaction(
  "Aufklärungsunterstützung",
  "2",
  [
    Das unterstützte Modell erhält +1 auf seinen WN-Wurf.
  ],
  condition: [
    - Kann durchgeführt werden, wenn ein eigenes Modell die Aktion _Aufklären_ ausführt.
    - Das aufzuklärende Modell muss sich im Wahrnehmungsbereich befinden.
  ],
)

= Ausrüstung
<Ausrüstung>
#index[Ausrüstung]

Jedes Modell kann Ausrüstung besitzen die nicht in die Kategorien Waffe oder Rüstung passt.

Ausrüstung kann über #uni.lnk("Profilmodifikatoren") verfügen.

== Aktionen
<Ausrüstung-Aktionen>

#uni.action(
  "Ausrüstung verwenden",
  "X",
  [
    Das Modell verwendet einen Ausrüstungsgegenstand.

    Die dafür nötigen AP-Kosten sind beim Ausrüstungsgegenstand angegeben.
  ],
)

== Regeln
#index("Ausrüstung", "Regeln")

Jede Ausrüstung kann Regeln beinhalten.
Wenn dem so ist, werden sie auf der Rückseite der #uni.lnk("Einheitenkarte") ausgegeben.

== AP-Kosten
#index("Ausrüstung", "AP-Kosten")

Wenn Ausrüstung AP-Kosten hat, muss die Aktion _Ausrüstung verwenden_ ausgeführt werden um sie zu benutzen. Ansonsten ist keine Aktion für die Verwendung notwendig.

== Einmalnutzung
#index("Einmalnutzung", "Ausrüstung")
#index("Ausrüstung", "Einmalnutzung")

Bestimmte Ausrüstung kann nur in einer begrenzten Anzahl eingesetzt werden.

Auf der #uni.lnk("Einheitenkarte") ist dies mit kreisförmigen Markern unmittelbar beim Namen der Ausrüstung vermerkt.
Die Anzahl an leeren Markern zeigt an, wie oft die Ausrüstung noch verwendet werden kann.

Bei jeder Verwendung muss ein Marker gestrichen werden.

#uni.example(
  align(
    left,
    [
      Für ein medizinisches Spray das 3x verwendet werden kann.

      #image("Grafiken/Abbildungen/einmalnutzung_ausrüstung.jpg", alt: "Einmalnutzung Ausrüstung")
    ],
  ),
)

== Unhandliche Ausrüstung <Ausrüstung-Unhandlich>
#index("Unhandlich", "Ausrüstung")
#index("Ausrüstung", "Unhandlich")

Bestimmte Ausrüstungsgegenstände sind unhandlich und haben dadurch negative Auswirkungen im #uni.lnk("Fernkampf-Unhandlich", alt: "Fernkampf") und #uni.lnk("Nahkampf-Unhandlich", alt: "Nahkampf").

Auf der #uni.lnk("Einheitenkarte") wird dies mit einer Raute rechts neben der Bezeichnung der Ausrüstung ausgewiesen.

= Kolosse
<Kolosse>
#index[Kolosse]

Unter ihnen werden in der Regel Einheiten verstanden die eine Größe von 4 bis 6 Meter haben und deren Gewicht bei 1,5 Tonnen erst anfängt.

Egal ob Mech, Riese oder Ungetüm: es handelt sich dabei um große und starke Kreaturen die Schaden austeilen und einstecken können als wären sie ein Panzer.

== Fern- und Nahkampf
#index("Kolosse", "Fern- und Nahkampf")

Im Fern- und Nahkampf kostet sie jede Aktion 1⊙ weniger wenn sie eine Waffe der Klasse 4 oder 5 einsetzen.

== Geländeausnutzung

Durch ihre Beweglichkeit profitieren Kolosse ganz normal von Deckung, da sie sich genau wie Standard-Modelle an diese anschmiegen können.

Aufgrund ihrer Größe können sie allerdings keine normal großen Türen benutzen oder normale Gebäude betreten.

== Trefferzonen
<Trefferzonen>
#index[Trefferzonen]
#index("Kolosse", "Trefferzonen")

Kolosse werden in die Trefferzonen Rumpf, Linke Seite, Rechte Seite und Bewegung unterteilt.

Welche Trefferzone im Fernkampf und Nahkampf getroffen wird, muss mit 1W12 festgestellt werden.
Es können auch Trefferzonen getroffen werden, die nicht direkt sichtbar sind.

#figure(
  image("Grafiken/Abbildungen/trefferzonen.svg", alt: "Trefferzonen"),
  caption: "Trefferzonen Kolosse",
)

Jede Trefferzone verfügt über eine eigene Anzahl an Trefferpunkten und Auswirkungen wenn diese in den kritischen Zustand oder auf 0 sinken.

Trefferpunkte werden nur für den Rumpf festgelegt.
Für Bewegung und Linke/Rechte Seite berechnet sich der Wert jeweils automatisch mit 2/3 des Rumpfes (aufgerundet).

=== Kritischer Zustand
#index("Kolosse", "Kritischer Zustand")

// [%unbreakable,cols="h,4"]
// |===

// |*Rumpf*
// |Wie bei Standard Modellen. Siehe <<Kritisch,Kritischer Zustand>>.

// |*Seite*
// |Sowohl im Fernkampf als auch Nahkampf -1 auf den jeweiligen Wurf für jede Seite im kritischen Zustand.

// |*Bewegung*
// |Muss für jede Bewegung einen erfolgreichen KO-Wurf ablegen.

// |===

=== Verlust aller Trefferpunkte
#index("Kolosse", "Verlust aller Trefferpunkte")

// [%unbreakable,cols="h,4a"]
// |===

// |*Rumpf*
// |Sinkt in sich zusammen und gilt als <<Eliminiert,eliminiert>>.
// Ist nun ein Geländestück.

// |*Seite*
// |Die Seite wird zerstört und dort getragene Waffen können nicht mehr verwendet werden.
// Außerdem werden AGI und NK um 1 verringert.

// |*Bewegung*
// |
// [%unbreakable%header,cols="^1,4",frame=ends]
// !===

// !W12
// !Auswirkung

// !1-6
// !Bleibt auf der Stelle stehen und kann sich noch drehen.

// !7-11
// !Bleibt auf der Stelle stehen und kann sich nicht mehr drehen.

// !12
// !Fällt um und gilt als <<Eliminiert,eliminiert>>. Ist nun ein Geländestück.

// !===

// |===

= Begleiter
<Begleiter>
#index[Begleiter]

Unter Begleitern wird alles verstanden das in irgendeiner Weise ferngesteuert ist.
Sie haben keinen eigenen Willen und die Steuerung erfolgt ausschließlich durch einen #uni.lnk("Operatoren", alt: "Operator").

Das unterscheidet sie von z.B. Robotern die auch aus eigener Initiative heraus handeln können und somit nicht als Begleiter gelten.

Sie haben keine eigene Initiativephase.

#uni.example(
  align(
    left,
    [
      - In einer Fantasywelt sind fliegende _Orbs_ oder die Vetrauten einer Hexe wie z.B. eine Katze oder Eule denkbar.
      - Bei Science Fiction oder heutzutage zählt alles vom ferngesteuerten Auto bis zum Quadcopter dazu.
    ],
  ),
)

== Operatoren
<Operatoren>
#index[Operatoren]
#index("Begleiter", "Operatoren")

Unter Operatoren versteht man alle Modelle denen ein Begleiter zugeordnet werden kann.
Dabei entscheiden die Ausrüstung und Eigenschaften eines Modells, ob und wie viele Begleiter ihm zugeordnet werden können.

Seine ihm zugeordneten Begleiter werden gleichzeitig mit ihm in seiner Initiativephase aktiv.

Eigenschaften eines Operators werden nur auf ihn selber angewendet, es sei denn eine Eigenschaft sagt explizit etwas anderes aus.

#uni.example(
  align(
    left,
    [
      - Eine Hexe hat die Eigenschaft _Vertrauter II_. Sie darf dadurch 2 zugeordnete Begleiter haben.
      - Mit dem _R3MOTE α Fernsteuerdeck_ kann ein Straßensamurai 1 zugeordneten Begleiter haben.
      - Ein Prospektor verfügt über 3 _Lenk-Module_ für seinen Anzug und kann damit 3 zugeordnete Begleiter haben.
    ],
  ),
)

=== Zuteilung
#index("Begleiter", "Zuteilung")

Begleiter können und müssen immer genau einem Operator zugeteilt sein.
Dies geschieht #uni.lnk("Vorbereiten der Gruppe", alt: "vor dem Spiel") und kann währenddessen nicht geändert werden.

== Begleiter ohne Operator
#index("Begleiter", "ohne Operator")

Begleiter, deren Operator #uni.lnk("Eliminiert", alt: "eliminiert") wurde oder der nicht mehr auf dem Spielfeld präsent ist, verbleiben an Ort und Stelle.

== Aktionspunkte
#index("Begleiter", "Aktionspunkte")

Jeder Begleiter verfügt über 2 AP.
Für sie können weitere AP verwendet werden indem die AP des zugeordneten Operators ausgegeben werden.

== Attribute
#index("Begleiter", "Attribute")

Begleiter verfügen nicht über die Attribute AGI, NK, FK und EH.
Jeder Wurf auf eines dieser Attribute verwendet immer die Attribute des zugeordneten Operators.

== Gefahrenbereich
#index("Begleiter", "Gefahrenbereich")

Da sie über keine EH verfügen haben sie auch keinen eigenen #uni.lnk("Gefahrenbereich").
Daraus ergibt sich, dass eine #uni.lnk("Unmittelbare Bedrohung", alt: "unmittelbare Bedrohung") für sie nicht existiert.
Sie müssen aber, wenn möglich, aktiv werden um gegen eine unmittelbare Bedrohung ihres Operators aktiv zu werden.

== Schock
#index("Begleiter", "Schock")

#uni.lnk("Schock", alt: "Schocks") funktionieren grundsätzlich wie bei allen anderen Modellen.

Die einzige Besonderheit besteht darin, dass der Operator zum Beginn einer Runde seine eigenen AP ausgeben kann um eventuelle Schock-Token von seinen ihm zugeordneten Begleitern zu entfernen.

== Eliminierung
#index("Begleiter", "Eliminierung")

Sobald ein Begleiter #uni.lnk("Eliminiert", alt: "eliminiert") wurde, kommt es zu einer Rückkopplung auf den Operator, welche ihm Schaden zufügen kann.

Der Operator muss einen EH-Test ablegen.
Misslingt dieser, verliert er automatisch Trefferpunkte in Höhe der halben (abgerundeten) KO des Begleiters.

= Disziplinen & Kräfte
<Disziplinen-und-Kräfte>
#index[Disziplinen]
#index[Kräfte]

In Universalis wird alles was andernorts normalerweise als PSI, Magie, Thaumaturgie, usw. bezeichnet wird _Kräfte_ genannt.
Sie sind in sogenannten _Disziplinen_ organisiert welche die ungefähre Art der dazugehörigen Kräfte vorgeben.

Jede Spielmechanik die über #uni.lnk("Eigenschaften") hinaus geht sollte als Kraft dargestellt werden.

#uni.example(
  align(
    left,
    [
      - In einer Fantasywelt wären _Feuermagie_ und _Eiszauberei_ eigene Disziplinen, die dann jeweils Kräfte wie _Feuerball_ und _Feuerwand_ bzw. _Eisblitz_ und _Schneesturm_ beinhalten.
      - Bei Cyberpunk wäre eine Disziplin wie _Psychokinese_ denkbar die dann Kräfte wie _Würgegriff_ und _Schweben_ vereint.
    ],
  ),
)

== Auswahl
<Kraft-Auswahl>
#index("Kräfte", "Auswahl")

Sobald ein Modell einer Disziplin angehört, hat es grundsätzlich Zugriff auf alle darin enthaltenen Kräfte.
Die maximale Anzahl an verschiedenen Kräften, die ein Modell aus einer Disziplin mit in ein Spiel hinein nehmen kann, wird durch die Stufe begrenzt, über die es in der entsprechenden Disziplin verfügt.

Jeder Spieler entscheidet #uni.lnk("Vorbereiten der Gruppe", alt: "vor Spielbeginn"), welche Kräfte seine Modelle mit in das aktuelle Spiel nehmen.

#uni.example(
  align(
    left,
    [
      Die Disziplin _Feuermagie_ enthält insgesamt 13 verschiedene Kräfte.
      Magier Zordan verfügt über _Feuermagie - IV_ was ihn dazu berechtigt, 4 verschiedene Kräfte aus dieser Disziplin mit ins Spiel zu nehmen.
    ],
  ),
)

== Kräfte

Jede Kraft wird durch eine Karte repräsentiert, auf der die durch sie verursachten Effekte beschrieben sind.

#align(
  center,
  image("Grafiken/Abbildungen/kraftkarte_übersicht.svg", alt: "Aufbau Kraftkarte"),
)

#uni.table_h(
  columns: (30%, 70%),
  align: (x, _) => {
    if x > 0 {
      left + top
    } else {
      center + top
    }
  },

  table.header([*Nr.*], [*Bedeutung*]),

  "1.",
  "Bezeichnung",

  "2.",
  "Regeln",

  "3.",
  [#uni.lnk("Kraft-AP-Kosten", alt: "AP Kosten")],

  "4.",
  [#uni.lnk("Kraft-Attribut", alt: "Attribut")],

  "5.",
  [#uni.lnk("Kraft-TP-Verlust", alt: "TP-Verlust")],

  "6.",
  [#uni.lnk("Kraft-Ziel", alt: "Ziel")],

  "7.",
  [#uni.lnk("Kraft-Reichweite", alt: "Reichweite")],

  "8.",
  [#uni.lnk("Kraft-Dauer", alt: "Dauer")],
)

=== AP-Kosten
<Kraft-AP-Kosten>
#index("Kräfte", "AP-Kosten")

Dies sind die benötigten AP um die Kraft einzusetzen.

=== Attribut
<Kraft-Attribut>
#index("Kräfte", "Attribut")

Kräfte beziehen sich immer auf ein Attribut.
Sobald eine Kraft eingesetzt werden soll muss zunächst ein erfolgreicher #uni.lnk("Attributswurf") gegen dieses Attribut abgelegt werden.

Zusätzlich kann eine Schwierigkeit angegeben sein.
Sie gibt an wie der #uni.lnk("Attributswurf") modifiziert wird.

#uni.example(
  align(
    left,
    [
      - Die schwer auszuführende Kraft _Explosiver Feuerball_ ist mit `FK-4` angegeben. Der Attributswurf auf FK ist damit um 4 erschwert.
      - Die simple Kraft _Levitation_ ist mit `KO+3` angegeben. Der Attributswurf auf KO ist damit um 3 erleichtert.
    ],
  ),
)

=== TP-Verlust
<Kraft-TP-Verlust>
#index("Kräfte", "TP-Verlust")

Bei manchen Kräften kann es bei deren Einsatz zum Verlust von TP kommen.

Hierbei wird unterschieden ob der Verlust an TP nur bei misslungenem #uni.lnk("Attributswurf") oder bei jedem Einsatz automatisch passiert.

Die Zahl im Symbol gibt an, wie viele TP das Modell verliert.

#uni.table_h(
  columns: (50%, 50%),
  align: center + top,

  table.header([*bei Misserfolg*], [*Automatisch*]),

  image("Grafiken/Kraft/SchadenMisserfolg.svg", alt: "Misserfolg"),
  image("Grafiken/Kraft/SchadenAutomatisch.svg", alt: "Automatisch"),
)

=== Ziel
<Kraft-Ziel>
#index("Kräfte", "Ziel")

Für jede Kraft ist definiert, was als ihr Ziel ausgewählt werden kann.
Dabei wird zwischen 3 verschiedenen Zielen unterschieden.

#uni.table_h(
  columns: (40%, 1fr),
  align: (x, _) => {
    if x > 0 {
      left + top
    } else {
      center + top
    }
  },

  table.header([*Ziel*], [*Bedeutung*]),

  image("Grafiken/Kraft/ZielBereich.svg", alt: "Bereich") + "Bereich",
  "Die Kraft kann an einer beliebigen Stelle des Spielfelds eingesetzt werden.",

  image("Grafiken/Kraft/ZielModell.svg", alt: "Modell") + "Modell",
  "Die Kraft kann auf einem anderen Modell eingesetzt werden.",

  image("Grafiken/Kraft/ZielNutzer.svg", alt: "Nutzer") + "Nutzer",
  "Die Kraft kann auf dem Nutzer eingesetzt werden.",
)

=== Reichweite
<Kraft-Reichweite>
#index("Kräfte", "Reichweite")

Die Reichweite einer Kraft legt fest, ob das Ziel einer Kraft berührt werden muss oder die Kraft auf Distanz eingesetzt werden kann.

#uni.table_h(
  columns: (40%, 1fr),
  align: (x, _) => {
    if x > 0 {
      left + top
    } else {
      center + top
    }
  },

  table.header([*Reichweite*], [*Bedeutung*]),

  image("Grafiken/Kraft/ReichweiteBerührung.svg", alt: "Berührung") + "Berührung",
  [
    "Für den Einsatz muss Basekontakt bestehen."

    Bei gegnerischen Modellen muss zusätzlich vorher ein erfolgreicher #uni.lnk("Nahkampf", alt: "Nahkampfangriff") durchgeführt werden.
  ],

  image("Grafiken/Kraft/ReichweiteDistanz.svg", alt: "Distanz") + "Distanz",
  "Die Kraft kann auf Distanz eingesetzt werden.",
)

=== Dauer
<Kraft-Dauer>
#index("Kräfte", "Dauer")

Kräfte entfalten ihre Wirkung entweder sofort oder bleiben dauerhaft im Spiel.

Jede dauerhaft im Spiel bleibende Kraft muss aktiv beendet werden bevor sie erneut eingesetzt werden kann.
Die Karte der Kraft wird offen auf den Spieltisch gelegt solange sie im Spiel ist.

Manche Kräfte können sich auch selber beenden.
In diesem Fall haben sie eine Bedingung die angibt, wann sie automatisch beendet werden.

#uni.table_h(
  columns: (50%, 50%),
  align: center + top,

  table.header([*Sofort*], [*Dauerhaft*]),

  image("Grafiken/Kraft/DauerSofort.svg", alt: "Sofort"),
  image("Grafiken/Kraft/DauerDauerhaft.svg", alt: "Dauerhaft"),
)

== Aktionen
<Kraft-Aktionen>

#uni.action(
  "Kraft einsetzen",
  "X",
  [
    Das Modell setzt eine Kraft ein.

    Die dafür nötigen AP-Kosten, Bedingungen und Regeln sind auf der Karte der Kraft angegeben.
  ],
)

#uni.action(
  "Kraft beenden",
  "1",
  [
    Eine eigene beliebige #uni.lnk("Kraft-Dauer", alt: "dauerhafte") Kraft die gerade im Spiel ist wird beendet.
  ],
)

#uni.action(
  "Kraft blockieren",
  "2",
  [
    Das Modell versucht eine sich im Spiel befindliche Kraft zu #uni.lnk("Kraft blockieren", alt: "blockieren").
  ],
)

== Reaktionen
<Kraft-Reaktionen>

#uni.reaction(
  "Kraft blockieren",
  "3",
  [
    Das Modell versucht eine Kraft zu #uni.lnk("Kraft blockieren", alt: "blockieren") während ein gegnerisches Modell sie ausspielt.
  ],

  condition: [
    Kann durchgeführt werden sobald ein gegnerisches Modell eine Kraft einsetzt.
  ],
)

== Kraft blockieren
<Kraft-blockieren>
#index("Kräfte", "Blockieren")

Nur Modelle die einer Disziplin angehören können auch Kräfte blockieren.

Um zu versuchen eine Kraft zu blockieren muss sich entweder das gegnerische Modell, welches die Kraft ausgespielt hat, oder die Kraft selbst im #uni.lnk("Wahrnehmungsbereich") befinden.

Das Modell muss einen #uni.lnk("Attributswurf") gegen das bei der Kraft angegebene Attribut mit dessen Schwierigkeit ablegen.
Bei Erfolg wird die Kraft blockiert.

Ein eventueller TP-Verlust wird ebenfalls angewendet.

= Stichwortverzeichnis
#set page(columns: 1)

#columns(3)[
  #make-index(title: none)
]

= Anhang A: Geländetypen
<Anhang-Geländetypen>
#include "_Geländetypen.typ"

= Anhang B: Objekte
<Anhang-Objekte>
#include "_Objekte.typ"
