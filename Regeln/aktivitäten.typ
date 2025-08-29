#import "universalis.typ" as uni

#let actions = (
  ausrüstung: (
    (
      name: [Ausrüstung verwenden],
      points: [X],
      content: [
        Das Modell verwendet einen Ausrüstungsgegenstand.

        Die dafür nötigen AP-Kosten sind beim Ausrüstungsgegenstand angegeben.
      ],
    ),
  ),
  bewegung: (
    (
      name: [Normale Bewegung],
      points: [1|2],
      content: [
        Das Modell bewegt sich entsprechend seiner GK.
        Die AP-Kosten sind 1⊙ falls das Modell steht und 2⊙ falls es #uni.lnk("Liegende Modelle", alt: "liegt").

        Die Bewegung darf niemals in Basekontakt mit einem gegnerischem Modell enden, es muss immer ein Abstand von mindestens 1" eingehalten werden.
      ],
    ),
    (
      name: [Drehen],
      points: [0],
      content: [
        Kostet keine AP, zählt aber dennoch als eine eigene Aktion.
      ],
    ),
    (
      name: [Hinlegen],
      points: [1],
      content: [
        Das Modell gilt als #uni.lnk("Liegende Modelle", alt: "liegend").
      ],
    ),
    (
      name: [Aufstehen],
      points: [1],
      content: [
        Das Modell gilt als stehend.
      ],
    ),
    (
      name: [Angriffsbewegung],
      points: [WK],
      content: [
        Die Angriffsbewegung funktioniert wie eine ganz normale Bewegung, ihre Kosten entsprechen aber der Waffenklasse der zu verwendenden Nahkampfwaffe. Die eigentliche Bewegung ist somit kostenlos.

        Wenn sie in einem Basekontakt mit einem gegnerischen Modell endet wird sie automatisch zu einem #uni.lnk("Nahkampf-Aktionen", alt: "Angriff").
      ],
      condition: [
        Nicht bei #uni.lnk("Liegende Modelle", alt: "liegenden") Modellen.
      ],
    ),
    (
      name: [Aus Nahkampf lösen],
      points: [2],
      content: [
        Mit dieser Aktion kann sich ein Modell aus einem #uni.lnk("Nahkampf") lösen, muss vorher aber den Test für eine #uni.lnk("Unmittelbare Bedrohung", alt: "unmittelbare Bedrohung") durchführen.
        Wenn er misslingt passiert nichts und es werden keine AP ausgegeben.

        Wenn er gelingt bewegt es sich wie bei einer normalen Bewegung.
      ],
      condition: [
        - Das Modell muss sich im Nahkampf befinden.
        - Nicht bei #uni.lnk("Liegende Modelle", alt: "liegenden") Modellen.
      ],
    ),
  ),
  eigenschaften: (
    (
      name: [Eigenschaft anwenden],
      points: [X],
      content: [
        Das Modell wendet eine Eigenschaft an.
        Die dafür nötigen AP-Kosten sind bei der Eigenschaft angegeben.
      ],
    ),
  ),
  fernkampf: (
    (
      name: [Normaler Schuss],
      points: [WK+1],
      content: [
        Das Modell führt einen Fernkampf durch.
      ],
    ),
    (
      name: [Feuerbereitschaft],
      points: [2],
      content: [
        Das Modell wählt eine seiner Fernkampfwaffen und befindet sich damit maximal bis zum Beginn seiner nächsten Initiativephase in Feuerbereitschaft.
        Es verliert sie dann automatisch.

        Sie wird am Modell mit dem Feuerbereitschafts-Token dargestellt:
        #align(
          center,
          uni.display_token(uni.token.feuerbereitschaft),
        )

        Falls das Modell das Ziel irgendeiner erfolgreichen Aktion oder Reaktion eines gegnerischen Modells wird muss es einen EH-Test ablegen.
        Misslingt dieser verliert es die Feuerbereitschaft.
      ],
      condition: [
        - Nur mit Fernkampfwaffen der WK I, II und III.
        - Kann nur sinnvoll als letzte Aktion innerhalb einer Initiativephase durchgeführt werden, da jede weitere Aktion oder Reaktion die Feuerbereitschaft automatisch beendet.
      ],
    ),
    (
      name: [Gezielter Schuss],
      points: [WK+2],
      content: [
        Das Modell führt einen Fernkampf durch und erhält +2 auf seinen FK-Wurf.
        Die Längen des Reichweitenbands werden verdoppelt.
      ],
      condition: [
        Ist nicht in Kombination mit Dauerfeuer einsetzbar.
      ],
    ),
    (
      name: [Schnellschuss],
      points: [WK],
      content: [
        Das Modell führt einen Fernkampf durch und erhält -2 auf seinen FK-Wurf.
      ],
    ),
    (
      name: [Nachladen],
      points: [WK],
      content: [
        Die dafür nötigen AP-Kosten entsprechen der WK der Waffe für die der Token gilt.
        Der Token wird danach vom Modell entfernt.
      ],
      condition: [
        Diese Aktion kann nur von Modellen mit einem #uni.lnk("Nachladen", alt: "Nachlade-Token") durchgeführt werden.
      ],
    ),
  ),
  kräfte: (
    (
      name: [Kraft einsetzen],
      points: [X],
      content: [
        Das Modell setzt eine Kraft ein.

        Die dafür nötigen AP-Kosten, Voraussetzungen und Regeln sind auf der Karte der Kraft angegeben.
      ],
    ),
    (
      name: [Kraft beenden],
      points: [1],
      content: [
        Eine eigene beliebige #uni.lnk("Kraft-Dauer", alt: "dauerhafte") Kraft die gerade im Spiel ist wird beendet.
      ],
    ),
    (
      name: [Kraft blockieren],
      points: [2],
      content: [
        Das Modell versucht eine sich im Spiel befindliche Kraft zu #uni.lnk("Kraft blockieren", alt: "blockieren").
      ],
    ),
  ),
  nahkampf: (
    (
      name: [Angriff],
      points: [WK],
      content: [
        Das Modell führt mit einem anderen Modell einen Nahkampf durch und gilt als der Angreifer.
      ],
    ),
    (
      name: [Verwegener Angriff],
      points: [WK+2],
      content: [
        Das Modell führt mit einem anderen Modell einen Nahkampf durch und gilt als der Angreifer.
        Es erhält +3 auf seinen NK-Wurf.

        Sollte es den Nahkampf verlieren und der Gegner wendet die Reaktion _Gegenangriff_ an verteidigt es sich mit NK von 0.
      ],
    ),
    (
      name: [Verteidigung],
      points: [2],
      content: [
        Das Modell befindet sich maximal bis zum Beginn seiner nächsten Initiativephase in Verteidigung.
        Es verliert sie dann automatisch.

        Sie wird am Modell mit dem Verteidigungs-Token dargestellt:
        #align(
          center,
          uni.display_token(uni.token.verteidigung),
        )

        Wenn es in einen Nahkampf verwickelt wird bekommt der Angreifer keinen eventuellen #uni.lnk("Bonus für den Angreifer", alt: "Bonus") für eine #uni.lnk("Bewegung-Aktionen", alt: "Angriffsbewegung").
        Das Modell verliert danach automatisch seine Verteidigung.

        Wenn das Modell das Ziel von Fernkampf oder einer Kraft ist muss es einen EH-Test ablegen.
        Misslingt dieser verliert es die Verteidigung.
        Es muss dafür nicht getroffen werden.
      ],
      condition: [
        Kann sinnvoll nur als letzte Aktion innerhalb einer Initiativephase durchgeführt werden.
        Jede weitere Aktion oder Reaktion beendet die Verteidigung automatisch.
      ],
    ),
  ),
  objekte: (
    (
      name: [Objekt benutzen],
      points: [X],
      content: [
        Benutzen eines #uni.lnk("Objekte", alt: "Objekts").
      ],
      condition: [
        Kann nur in direktem Basekontakt mit einem Objekt eingesetzt werden.
      ],
    ),
  ),
  tarnung: (
    (
      name: [Aufklären],
      points: [2+],
      content: [
        Aufklären bezieht sich immer auf ein konkretes getarntes gegnerisches Modell.

        Um ein getarntes Modell aufzuklären muss es sich im Wahrnehmungsbereich befinden und ein erfolgreicher WN-Wurf abgelegt werden, welcher um die Stufe der Tarnung erschwert ist.
        Bei Erfolg wurde das getarnte Modell aufgeklärt.

        Pro zusätzlich eingesetztem AP kann der WN-Wurf um 1 erleichtert werden.
      ],
    ),
  ),
)

#let reactions = (
  bewegung: (
    (
      name: [Fernkampf Ausweichen],
      points: [1],
      content: [
        Wenn das Modell einen vergleichenden Wurf auf AGI gewinnt erhält der Schütze -1 auf seinen FK-Wurf.
      ],
      condition: [
        - Kann von einem Modell durchgeführt werden, welches Ziel eines Fernkampfangriffs ist.
          Der Schütze muss sich im #uni.lnk("Wahrnehmungsbereich") befinden.
        - Nicht bei #uni.lnk("Liegende Modelle", alt: "liegenden") Modellen.
        - Nur bevor der Schütze seinen FK-Wurf durchführt.
      ],
    ),
  ),
  fernkampf: (
    (
      name: [Reaktionsfeuer],
      points: [WK],
      content: [
        Das Modell führt einen Fernkampf mit der bei der Einnahme der Feuerbereitschaft gewählten Fernkampfwaffe durch und erhält einen zusätzlichen Malus von -1 auf seinen FK-Wurf.

        Das Modell verliert danach automatisch seine Feuerbereitschaft.
      ],
      condition: [
        - Das Modell muss sich in Feuerbereitschaft befinden.
        - Der Fernkampf darf nur auf ein gegnerisches Modell gerichtet sein, welches eine beliebige #uni.lnk("Bewegung-Aktionen", alt: "Bewegungsaktion") innerhalb des #uni.lnk("Wahrnehmungsbereich", alt: "Wahrnehmungsbereichs") durchführt.
        - Kann nicht mit #uni.lnk("Indirekter-Fernkampf", alt: "indirektem Fernkampf") genutzt werden.
      ],
    ),
  ),
  kräfte: (
    (
      name: [Kraft blockieren],
      points: [3],
      content: [
        Das Modell versucht eine Kraft zu #uni.lnk("Kraft blockieren", alt: "blockieren") während ein gegnerisches Modell sie ausspielt.
      ],
      condition: [
        Kann durchgeführt werden sobald ein gegnerisches Modell eine Kraft einsetzt.
      ],
    ),
  ),
  nahkampf: (
    (
      name: [Gegenangriff],
      points: [WK],
      content: [
        Das Modell führt mit dem Modell auf welches reagiert wurde einen Nahkampf durch und gilt als der Angreifer.
      ],
      condition: [
        Kann nur unmittelbar nach einem Nahkampf durch den Verteidiger durchgeführt werden.
      ],
    ),
    (
      name: [Gelegenheitsangriff],
      points: [WK],
      content: [
        Das Modell führt mit dem sich aus dem Nahkampf lösenden Modell einen Nahkampf durch und gilt als der Angreifer.
        Das sich lösende Modell kämpft mit NK von 0.
      ],
      condition: [
        Kann durchgeführt werden, wenn sich ein gegnerisches Modell in Basekontakt aus dem Nahkampf löst.
      ],
    ),
  ),
  tarnung: (
    (
      name: [Aufklärungsunterstützung],
      points: [2],
      content: [
        Das unterstützte Modell erhält +1 auf seinen WN-Wurf.
      ],
      condition: [
        - Kann durchgeführt werden, wenn ein befreundetes Modell die Aktion _Aufklären_ ausführt.
        - Das aufzuklärende Modell muss sich im Wahrnehmungsbereich befinden.
      ],
    ),
  ),
)
