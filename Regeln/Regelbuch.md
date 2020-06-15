---
puppeteer:
    pdf:
        format: A4
        displayHeaderFooter: true
        landscape: false
        margin:
            top: 1cm
            right: 0cm
            bottom: 2cm
            left: 0cm
        headerTemplate: '   <section></section>'
        footerTemplate: '   <style>
                                section
                                {
                                    margin: 0 auto;
                                    font-family: Nova Round;
                                    font-size: 10px;
                                    width: 100%;
                                }
                            </style>
                            <section>
                                <div style="border-top: 1px solid black; text-align: center; padding-top: 0.3cm">
                                    - <span class="pageNumber"></span> -
                                </div>
                            </section>'
---

# Universalis - Regelbuch

Regelbuch Version 0.1.0

## Inhaltsverzeichnis

[[toc]]

## Vorwort

Dies ist kein Turniersystem und der Spaß steht im Vordergrund.

TODO

## Das Spiel

### Was braucht man

Ein Tisch mit einer Fläche von mindestens 90cm * 90cm.

Ein Maßband mit Markierungen in cm.

![Maßband](Grafiken/Abbildungen/maßband.svg){width="200pt"} {align="center"}

Einen W12 und pro Modell jeweils einen weißen und einen roten W6.

![W12 weiß](Grafiken/Abbildungen/w12_weiß.svg){width="50pt"} ![W6 weiß](Grafiken/Abbildungen/w6_weiß.svg){width="50pt"} ![W6 rot](Grafiken/Abbildungen/w6_rot.svg){width="50pt"} {align="center"}

Des weiteren werden Marker für die folgenden Status benötigt:

|Symbol|Bedeutung|
|:--:|--|
|![schnell](Grafiken/Marker/schnell.svg){width="40pt"}|[Schnelle Bewegung](#schnelle-bewegungen)|
|![schock](Grafiken/Marker/schock.svg){width="40pt"}|[Schock](#schock)|
|![liegen](Grafiken/Marker/liegen.svg){width="40pt"}|[Liegen](#liegende-modelle)|
|![feuerbereitschaft](Grafiken/Marker/feuerbereitschaft.svg){width="40pt"}|[Feuerbereitschaft](#aktionen:-fernkampf)|
|![abwehrhaltung](Grafiken/Marker/abwehrhaltung.svg){width="40pt"}|[Abwehrhaltung](#aktionen:-nahkampf)|
|![tarnung](Grafiken/Marker/tarnung.svg){width="40pt"}|[Tarnung](#tarnung)|

### Fraktion

Die verschiedenen Länder der bekannten Erde haben sich, mehr oder weniger
freiwillig, zu grundverschiedenen Bündnissen zusammengeschlossen.

### Modelle

Jedes Modell verfügt über eine [Einheitenkarte](#einheitenkarte) und ist immer in einer [Gruppe](#gruppen) organisiert.

Modelle werden dabei in Infanterie, Mech, Koloss und Fahrzeuge unterschieden.

| Symbol | Name | Beschreibung | [Größenprofil](#größenprofil) |
|--|--|--|--|
| ![Infanterie](Grafiken/Modell/Infanterie.svg){width="40pt"} | Infanterie | Sie umfasst alles von normalen Soldaten bis hin zu Panzeranzügen. | klein bis groß |
| ![Mech](Grafiken/Modell/Mech.svg){width="40pt"} | Mech | Sie umfassen unter Anderem große servounterstützte Panzeranzüge mit meist schwerster Bewaffnung. | groß bis riesig |
| ![Koloss](Grafiken/Modell/Koloss.svg){width="40pt"} | Koloss | Große biologische Kreaturen werden als Kolosse bezeichnet. | groß bis riesig |
| ![Fahrzeug](Grafiken/Modell/Fahrzeug.svg){width="40pt"} | Fahrzeug | TODO Beinhaltet alles was von einem Modell welches sich darin befindet gesteuert wird. | mittel bis riesig |
| ![Drohne](Grafiken/Modell/Drohne.svg){width="40pt"} | Drohne | Umschreibt alle Modelle die durch ein anderes Modell ferngesteuert werden. | klein bis mittel |

### Gruppen

Eine Gruppe wird immer für genau eine Fraktion aufgestellt und besteht aus 2 oder mehr Modellen.

Jeder Spieler verfügt über genau 1 Gruppe die genau 1 Gruppenführer beinhalten muss.

### Gruppenführer

Genau ein Modell jeder Gruppe muss der Gruppenführer sein.

Der Gruppenführer einer Gruppe wird unter anderem dafür benötigt die Aufstellungsreihenfolge und [Reihenfolge innerhalb einer Runde](#reihenfolge-innerhalb-der-runde) zu bestimmen.

Jede Fraktion hat ihre eigene Regelung wer der Gruppenführer ist und wie ein Stellvertreter bestimmt wird.

### Einheitenkarte

Die Einheitenkarte ist ein zentraler Bestandteil des Spiels und beinhaltet alle spielrelevanten Werte eines Modells.
Auf der Rückseite beinhaltet sie außerdem eventuelle Sonderregeln der verwendeten [Ausrüstung](#ausrüstung) und [Eigenschaften](#eigenschaften).

![einheitenkarte](Grafiken/Abbildungen/einheitenkarte.jpg){width="400pt"} {align="center"}

*Beispiel einer Einheitenkarte* {align="center"}

Der [Aufbau der Einheitenkarte](#aufbau-der-einheitenkarte) geht näher auf die einzelnen Elemente ein.

Es bietet sich an die Einheitenkarten in Klarsichthüllen unterzubringen.
So ist gewährleistet, dass sie nicht kaputt gehen und während des Spiels können Notizen mit einem abwischbaren Stift darauf vorgenommen werden.

### Aktionspunkte

Jedes Modell verfügt über 6 Aktionspunkte pro Runde, die in verschiedenen Phasen des Spiels für Aktionen und Reaktionen ausgegeben werden können.

Die Kosten in Aktionspunkten werden immer mit diesem Zeichen angegeben: ⊙

Neben jedes Modell muss ein weißer W6 gelegt werden der die aktuell noch verfügbaren Aktionspunkte anzeigt.
Er wird gegen einen roten W6 ausgetauscht wenn das Modell in einen [kritischen Zustand](#kritischer-zustand) verfällt.

### Attribute

Attribute sind die Werte eines Modells, die sich auf seine körperlichen  Eigenschaften beziehen.
Diese können sowohl angeboren als auch antrainiert sein.

Im [Kritischen Zustand](#kritischer-zustand) werden die Attribute um 1 verringert.

### Profile

Jedes Modell verfügt über ein Profil welches aus den folgenden Attributen besteht:

| Kürzel | Name | Beschreibung |
|:--:|--|--|
|AGI|Agilität|Steht für die Geschwindigkeit und das Reaktionsvermögen des Modells. Siehe z.B. [Nahkampf](#nahkampf) und [Reaktionen](#reaktionen).|
|BW|Bewegung|Gibt an, wie weit sich ein Modell bewegen kann. Siehe [Bewegung](#bewegung).|
|KO|Konstitution|Drückt nicht nur aus wie stark ein Modell, sondern auch wie widerstandsfähig es ist. Siehe z.B. [Schock](#schock) und [Tragkraft](#tragkraft).|
|FK|Fernkampf|Stellt die Fernkampffähigkeit des Modells dar. Siehe [Fernkampf](#fernkampf).|
|WN|Wahrnehmung|Beschreibt, wie gut das Modell seine Sinneswahrnehmungen verarbeiten kann. Siehe z.B. [Wahrnehmungsbereich](#wahrnehmungsbereich), [Tarnung](#tarnung) und [Bewegungstests](#bewegungstest).|
|EH|Entschlossenheit|Die Fähigkeit eines Modells, physische oder mentale Konflikte zu bewältigen. Siehe z.B. [Gefahrenbereich](#gefahrenbereich).|

!!! example Beispiel normaler Mensch

    | AGI | BW | KO | FK | WN | EH |
    |:--:|:--:|:--:|:--:|:--:|:--:|
    | 4 | 4 | 3 | 2 | 3 | 3 |

### Trefferpunkte

Sie steht für die Menge an [Schaden](#schadensanwendung), die ein Modells einstecken kann, bevor es aus dem Spiel entfernt wird.

Die maximale Menge an Trefferpunkten, über die ein Modell verfügen kann, liegt bei 20.

### Größenprofil

Modelle werden in 4 verschiedene Größenprofile gegliedert:

| Symbol | Name | Beschreibung | Base | Höhe |
|--|--|--|--|--|
| ![klein](Grafiken/Größe/klein.svg){width=40pt} | klein | Alles kleiner als einschließlich 1m | 25mm | 2,5cm |
| ![mittel](Grafiken/Größe/mittel.svg){width=40pt} | mittel | Alles zwischen 1m und 2,5m. | 25mm | 4cm |
| ![groß](Grafiken/Größe/groß.svg){width=40pt} | groß | Alles zwischen 2,5m und 3,5m. | 40mm | 6cm |
| ![riesig](Grafiken/Größe/riesig.svg){width=40pt} | riesig | Alles höher als einschließlich 3,5m. | 50mm | 8cm |

Jedes Modell wird hierbei wie ein kleiner Zylinder mit der Breite der Base und der angegebenen Höhe betrachtet.
Das Größenprofil eines Modell ist somit also abstrakt und entspricht nicht dem tatsächlichen Modell.

Dies bringt den Vorteil, dass es nun egal ist welche Modelle verwendet werden da überstehende Gliedmassen etc. für bspw. Sichtlinien keine Rolle mehr spielen.

### Sichtfeld

Es gibt 4 verschiedene Sichtfelder mit 45°, 90°, 180° und 360°.

![Sichtfeld](Grafiken/Abbildungen/sichtfeld.svg){.img_border} {align="center"}

*Übersicht der 4 verschiedenen Sichtfelder (der Pfeil stellt die Blickrichtung des Modells dar)* {align="center"}

### Sichtlinie

Eine Sichtlinie ist immer dann gegeben wenn sich das andere Modell im Sichtfeld befindet und zusätzlich ein Teil seines Größenprofils sichtbar ist.

Befreundete Modelle behindern nicht die Sichtlinie.

### Tragkraft

Jedes Modell kann eine gewisse Menge an Ausrüstung tragen, ohne, dass davon Agilität und Bewegung negativ beeinflusst werden.

Diese Tragkraft errechnet sich für Infanterie über die Konstitution (KO) im Quadrat (in Kilogramm):

    Tragkraft in kg = KO²

Bei Mechs und Kolossen wird die Konstitution (KO) vor der Quadrierung verdoppelt (in Kilogramm):

    Tragkraft in kg = (KO*2)²

Bis zu diesem Wert erleidet das Modell keine negativen Auswirkung, wird er überschritten werden Agilität (AGI) und Bewegung (BW) jeweils um 1 verringert.
Wird er um das doppelte überschritten, werden beide Attribute um jeweils 2 verringert usw.

Auf der Einheitenkarte ist dies bei den Attributen bereits eingerechnet.

!!! example Beispiel

    Ein Modell hat eine KO von 5 und damit eine Tragkraft von 25kg.
    
    Ab einer Belastung von über 25kg werden die genannten Attribute um jeweils 1 verringert, über 50kg um jeweils 2, über 75kg um jeweils 3 usw

### Gefahrenbereich

Der Gefahrenbereich beschreibt den Umkreis um ein Modell, in dem es auf gegnerische Modelle reagieren **muss**.
Der Radius in Zentimetern berechnet sich indem die Entschlossenheit von 12 abgezogen wird:

    Radius in cm = 12 - EH

Auf der Einheitenkarte wird der Gefahrenbereich mit diesem Symbol angegeben:

![gefahrenbereich](Grafiken/Modell/gefahrenbereich.png){width="40pt"} {align="center"}

#### Direkte Bedrohung

Ein gegnerische Modell, das sich innerhalb des Gefahrenbereichs am nächsten zum eigenen Modell aufhält, wird „direkte Bedrohung" genannt.
Sollten sich gegnerische Modelle im Basekontakt befinden sind sie, losgelöst von dem Radius des Gefahrenbereichs, automatisch direkte Bedrohungen.

Sie können nicht einfach ignoriert und müssen stattdessen angegriffen werden.

Möchte das Modell eine direkte Bedrohung ignorieren, muss es dafür einen EH-Test bestehen.
Misslingt dieser Test muss ein Angriff gegen die direkten Bedrohung erfolgen.

### Wahrnehmungsbereich

Der Wahrnehmungsbereich umfasst alles im Sichtfeld des Modells bis zu einer Distanz die wie folgt berechnet wird:

    Distanz = WN * 5cm

![wahrnehmungsbereich](Grafiken/Abbildungen/wahrnehmungsbereich.svg){.img_border} {align="center"}

*Beispiel mit einem Sichtfeld von 90° (der Pfeil stellt die Blickrichtung des Modells dar)* {align="center"}

Im [Kritischen Zustand](#kritischer-zustand) wird die Reichweite des Wahrnehmungsbereichs halbiert (aufgerundet).

Auf der Einheitenkarte wird der Wahrnehmungsreich mit diesem Symbol angegeben:

![wahrnehmungsbereich](Grafiken/Modell/wahrnehmungsbereich.png){width="40pt"} {align="center"}

### Entfernungen messen

Entfernungen zwischen Modellen werden immer von den Rändern der Bases gemessen.

![entfernungen messen](Grafiken/Abbildungen/entfernungen_messen.svg){.img_border} {align="center"}

*Entfernung zwischen 2 Modellen* {align="center"}

Entfernungen zwischen Modellen dürfen immer gemessen werden.

## Aufbau der Einheitenkarte

![Aufbau Einheitenkarte](Grafiken/Abbildungen/einheitenkarte_übersicht.svg){.img_border} {align="center"}

*Abbildung 5: Aufbau der Einheitenkarte* {align="center"}

1. [Fraktion](#fraktion)
2. [Trefferpunkte](#trefferpunkte)
3. Name des Modells
4. [Typ des Modells](#modelle)
5. [Attribute](#attribute)
6. Outfit, also Ausstattungsvariante
7. Punkte
8. [Gefahrenbereich](#gefahrenbereich)
9. [Wahrnehmungsbereich](#wahrnehmungsbereich)
10. [Größenprofil](#größenprofil)
11. [Bewegungsart](#bewegungsart)
12. Gesamtgewicht
13. [Schadenstypen](#schadens--und-verteidigungstypen)
14. [Verteidigungstypen](#schadens--und-verteidigungstypen)
15. [Schadenseffekte](#übersicht-der-schadens--und-verteidigungseffekte)
16. [Verteidigungseffekte](#übersicht-der-schadens--und-verteidigungseffekte)

## Würfelwürfe

Es werden nur W12 verwendet.

Vom Tisch gefallene Würfel zählen nicht, und müssen erneut gewürfelt werden.

### Attributs-Wurf

Attributs-Würfe werden in der Form [Attributskürzel]-Wurf angegeben.
So wird bspw. für einen Attributs-Wurf auf Konstitution nur „KO-Wurf“ geschrieben.

Es wird immer der aktuelle Attributswert genommen der auch gegebenenfalls durch Effekte im Spiel modifiziert wurde.
Abhängig von verschiedenen Eigenschaften, Boni und bestimmten Regeln kann der zu erreichende Wert je nach Situation noch zusätzlich variieren.

Sollte ein zu erreichender Wert kleiner/gleich 0 sein, entfällt der Wurf und gilt als Misserfolg.

Der Wurf wird mit 1W12 durchgeführt.
Sofern das Ergebnis unter/gleich dem Wert liegt is es ein Erfolg, ansonsten ein Misserfolg.

### Vergleichender Wurf

Bei einem vergleichendem Wurf wird für 2 konkurrierende Modelle jeweils 1W12 gewürfelt und jeweils ein Wert hinzuaddiert.

Abhängig von der Situation werden verschiedene Werte hinzuaddiert, durchaus auch unterschiedliche Werte je Modell.
Abhängig von verschiedenen Eigenschaften, Boni und bestimmten Regeln kann der zu addierende Wert je nach Situation noch zusätzlich variieren.

Das Modell mit dem höheren Ergebnis gewinnt den Wurf.

## Ablauf des Spiels

Das Spiel ist in mehrere Phasen unterteilt die nacheinander abgehandelt werden.

1. Aufbau des Spielfelds
2. Missionsauswahl
3. Aufstellen der Modelle
4. Runden
    - Initiativephasen
5. Bestimmung des Gewinners

### Aufbau des Spielfeldes

Beide Spieler bauen gemeinsam das Spielfeld auf bis sie damit einverstanden sind.

Die Fläche des Spielfeldes muss exakt 90cm * 90cm betragen.

### Missionsauswahl

Jeder Spieler wählt geheim und unabhängig vom anderen Spieler eine Mission aus.
Danach teilen sie sich gegenseitig ihre jeweilige Mission mit.

Als nächstes werden alle Missionsspezifischen Änderungen am Spielfeld vorgenommen.
Etwaige Probleme bei kollidierenden Missionsanforderungen sollten gemeinschaftlich gelöst werden.

### Aufstellen der Modelle

Beide Spieler führen einen vergleichenden Wurf durch wobei jeweils die AGI des Grupenführers addiert wird.

Der Gewinner des Wurfs markiert entsprechend seiner Mission seine Aufstellungszone, danach ist der Verlierer damit dran.
Als nächstes stellt der Gewinner alle seine Modelle auf, danach der Verlierer.

Losgelöst von der gewählten Mission dürfen Modelle nie näher als 12cm an gegnerische Modelle aufgestellt werden.

### Runden

Innerhalb einer Runde hat jedes Modell eine Initiative-Phase.
Die Runde ist erst dann beendet, wenn jedes Modell seine Initiative-Phase durchgeführt hat.

#### Rundenbeginn

Zu Beginn jeder Runde werden die AP jedes Modells wieder auf 6⊙ aufgefüllt.
Nicht verbrauchte AP aus der Vorrunde werden halbiert (abgerundet) und addiert.

Modelle mit [Schock-Markern](#schock) verlieren danach automatisch pro Marker 1 AP.

#### Reihenfolge innerhalb der Runde

Innerhalb einer Runde wählen beide Spieler immer gleichzeitig jeweils ein beliebiges eigenes Modell aus, welches in dieser Runde noch keine Initiativephase hatte.

Beide Modelle führen einen vergleichenden Wurf auf AGI durch.
Der Gewinner hat zuerst seine Initiativephase, danach direkt der Verlierer.

Sollte ein Spieler keine Modelle mehr haben, aktiviert der andere Spieler seine übrigen Modelle in beliebiger Reihenfolge.

### Initiative-Phase

Eine Initiative-Phase ist der Zeitpunkt, an dem ein Modell mit seinen AP Aktionen ausführen kann.

Zusätzlich können andere Modelle, egal ob sie bereits ihre Initiative-Phase hatten oder nicht, unter bestimmten Voraussetzungen Reaktionen durchführen.

Zum Beginn der Initiativephase eines Modells, wird ein eventueller Marker für [schnelle Bewegung](#schnelle-bewegungen) entfernt.

### Rundenende

Wenn einer der Spieler aufgeben möchte wäre nun der Zeitpunkt dafür.
Das Spiel endet dann automatisch sofort und der Spieler der aufgegeben hat hat verloren.

Für jede Mission werden die Siegesbedingungen überprüft und das Spiel gegebenenfalls beendet.

Sollte es weitergehen werden die nicht verbrauchten AP jedes Modells halbiert (abgerundet) und mit in die nächste Runde übernommen.

## Aktionen und Reaktionen

Aktionen und Reaktionen beschreiben die Tätigkeiten, die von Modellen ausgeführt werden können.

Ein Modell kann in jeder Runde nur so viele Aktionen und Reaktionen ausführen, bis seine Aktionspunkte verbraucht sind.
Bei jeder Aktion und Reaktion sind die entsprechenden Kosten an Aktionspunkten angegeben.

### Typen

Es wird hierbei zwischen *normalen* und *komplexen* Aktionen und Reaktionen unterschieden.

*Normale* können von jedem Modell durchgeführt werden, vorausgesetzt es verfügt über die nötigen Voraussetzungen (bspw. „Hände“ um eine Waffe abzufeuern etc.).
Hier ist der gesunde Menschenverstand gefragt.

*Komplexe* müssen erlernt werden und können bspw. durch Ausrüstung oder Eigenschaften ermöglicht werden.

### Aktionen

Aktionen können immer von einem Modell ausgeführt werden, wenn es sich gerade in der eigenen Initiative-Phase befindet.
Bis auf wenige Ausnahmen können Aktionen beliebig aneinander gereiht und kombiniert werden.

### Reaktionen

Wenn eine Reaktion durchgeführt werden soll, kann dies nur als Antwort auf eine Aktion eines anderen Modells in dessen Initiative-Phase geschehen.
Sie sind teilweise an Bedingungen geknüpft.

Um eine Reaktion durchzuführen muss ein Modell über Aktionspunkte verfügen.
Dies ist unabhängig davon, ob das Modell in dieser Runde bereits eine Initiative-Phase hatte, oder diese noch stattfindet.
Um auf Aktionen zu reagieren, die nach der eigenen Initiative- Phase der aktuellen Runde stattfinden, müssen also Aktionspunkte aufbewahrt werden.

#### Aktionen durch Reaktionen unterbrechen

Damit auf eine Aktion reagiert werden kann, muss diese im [Wahrnehmungsbereich](#wahrnehmungsbereich) stattfinden.

Es kann versucht werden eine Aktion zu unterbrechen bevor sie durchgeführt wird (falls das Modell direkt sichtbar ist) oder z.B. während einer Bewegung (wenn das Modell gerade sichtbar wird).

Damit dieser Versuch erfolgreich ist, muss das reagierende Modell einen vergleichenden Wurf auf AGI gegen das aktuelle Modell gewinnen.
Bei einem Gleichstand gewinnt das Modell dessen Initiative-Phase gerade läuft.

Der Gewinner führt als Erster seine Aktion/Reaktion durch, der Verlierer danach seine.

Wenn sich dadurch, bspw. durch einen Treffer, negative Auswirkungen ergeben kommen sie auch sofort zur Anwendung.
Aktion und Reaktion passieren also nicht gleichzeitig, sondern nacheinander.

### Übersicht Aktionen und Reaktionen

|Typ|
|--|
|[Bewegen](#aktionen:-bewegung)|
|[Fernkampf](#aktionen:-fernkampf)|
|[Nahkampf](#aktionen:-nahkampf)|
|[Aufklären](#aktionen:-tarnung)|
|[Ausrüstung](#ausrüstung)|

## Eigenschaften

Eigenschaften beschreiben alles Erlernte oder Angeborene das über einfache Attribute hinausgeht.

### Aufbau einer Eigenschaft

Eine Eigenschaft verfügt immer über einen Namen der grob umschreibt was diese Eigenschaft umfasst.

Weiterhin kann eine Eigenschaft über eine Stufe verfügen.

Was sie für Auswirkungen hat und wie die Stufe zu behandeln ist, muss dem Regeltext der Eigenschaft entnommen werden.

!!! example Beispiel

    Ein normaler Mensch erhält die Eigenschaft „Bewährter Fernkämpfer II“.
    
    In ihr ist beschrieben, dass das Modell den Fernkampfwurf bis zu 2 mal wiederholen darf.

## Bewegung

Durch das Ausgeben von Aktionspunkten für Bewegungsaktionen kann das Modell entsprechend bewegt werden.

Bei Reaktionen kann auf jede Bewegungsaktion einzeln reagiert werden.
Mehrere aufeinander folgende Bewegungsaktionen können jedoch zu einer durchgehenden Aktion zusammengefasst werden, auf die dann auch nur einmal reagiert werden kann.

Der Zielpunkt einer einzelnen oder auch durchgehenden Bewegungsaktion muss noch vor der Bewegung festgelegt werden, damit der sich aus der Entfernung ergebende Modifikator für etwaige Reaktionen bestimmt werden kann.

### Bewegungsart

Jedes Modell hat eine Bewegungsart welche vorgibt, wie es sich grundsätzlich bewegen kann.

|Symbol|Name|Bedeutung|
|:--:|--|--|
|![antigrav](Grafiken/Bewegung/antigrav.png){width="40pt"}|Schweben| TODO Ignoriert Passierbarkeit. maximale Höhe? Träge Bewegung/Drehung? |
|![fuss](Grafiken/Bewegung/fuss.png){width="40pt"}|Beine|Standard Bewegungsart für Infanterie. Bietet weder spezielle Vorteile noch Nachteile.|
|![flug](Grafiken/Bewegung/flug.png){width="40pt"}|Flug|In jeder Runde muss als erste Aktion immer eine volle Bewegung in Blickrichtung ausgeführt werden. TODO Beschränkung bei Drehungen?|
|![kette](Grafiken/Bewegung/kette.png){width="40pt"}|Kette|Bewegungstests für Passierbarkeit dürfen einmal wiederholt werden.|
|![rad](Grafiken/Bewegung/rad.png){width="40pt"}|Rad|Auf dem Geländetyp Straße wird die Bewegung um 2cm erhöht.|
|![stationär](Grafiken/Bewegung/stationär.png){width="40pt"}|Stationär|Kann nicht bewegt werden.|

### Bewegungstest

Der Bewegungstest besteht aus einem WN-Wurf und muss in bestimmten Situationen durchgeführt werden.

### Aktionen: Bewegung

!!! danger Drehen - 0 ⊙

    Kostet keine AP, zählt aber dennoch als eine eigene Aktion.

!!! danger Normale Bewegung - 1-2 ⊙

    Das Modell bewegt sich entsprechend seiner BW in cm.
    Die AP-Kosten sind 1⊙ falls das Modell steht und 2⊙ falls es liegt.

!!! danger Hinlegen - 1 ⊙

    Das Modell gilt als liegend.

!!! danger Aufstehen - 1 ⊙

    Das Modell gilt als stehend.

!!! danger Angriffsbewegung - WK ⊙

    Die Angriffsbewegung funktioniert wie eine ganz normale Bewegung, ihre Kosten entsprechen aber der Waffenklasse der zu verwendenden Nahkampfwaffe.
    
    Die eigentliche Bewegung ist somit kostenlos.
    
    Wenn sie in einem Basekontakt mit einem gegnerischen Modell endet wird sie automatisch zu einem [Angriff](#aktionen:-nahkampf).

!!! danger Springen - 2 ⊙

    Das Modell springt entsprechend seiner BW in cm weit wenn es gestanden hat.
    
    Falls es unmittelbar vorher mindestens eine volle Bewegung gemacht hat, darf es die doppelte Reichweite springen.
    
    Ein Modell kann nicht springen, wenn es liegt.

!!! danger Interagieren - 1 ⊙

    Benutzen von Schaltern, Hebeln, nicht verschlossenen Türen etc.

### Reaktionen: Bewegung

!!! warning Hinwerfen - 2 ⊙

    !!! note ""

        Bedingung:

        Kann nur von dem beschossenen Modell ausgeführt werden, und nur bevor der Schütze seinen Fernkampfwurf durchführt.
        
        Nicht bei liegenden Modellen.
    
    Das Modell wirft sich zu Boden und gilt als liegend.

!!! warning Komplex: Beschuss Ausweichen - 1 ⊙

    !!! note ""

        Bedingung:
        
        Kann nur von dem beschossenen Modell ausgeführt werden, und nur bevor der Schütze seinen Fernkampfwurf durchführt.
        
        Nicht bei liegenden Modellen.
    
    Der Schütze erhält -1 auf seinen Fernkampfwurf.

### Herunterfallen

Ein Modell welches fällt kann unter Umständen Schaden erleiden.

Bis zu einer Fallhöhe in Höhe seines [Größenprofils](#größenprofil) passiert nichts.
Bis zur doppelten Höhe seines Größenprofils kann Schaden durch einen erfolgreichen Bewegungstest vermieden werden.
Darüber hinaus erleidet er automatisch einen Treffer.

Der Treffer hat eine Stärke in Höhe der KO des gefallenen Modells.

|Fallhöhe|Schadenstyp|Schaden|
|:--:|:--:|:--:|
| **bis einschliesslich** doppeltem Größenprofil | Schlag I | 2 |
| **größer als** doppeltes Größenprofil | Schlag II | 4 |

### Vertikale Bewegung

Ohne spezielle Ausrüstung können sich Modelle vertikal nur an Leitern bewegen.
Die Distanz wird ganz normal wie jede andere Bewegung gemessen.

### Klettern

Jedes Modell kann ohne spezielle Ausrüstung auf oder herunter von Hindernissen bis zu seinem doppelten [Größenprofil](#größenprofil) klettern.

Die vertikale Distanz wird dafür doppelt berechnet.

### Schnelle Bewegungen

Wenn sich ein Modell innerhalb seiner Initiativephase mehr als 20cm bewegt, gilt es als in schneller Bewegung.
Dabei wird die tatsächlich zurückgelegte Distanz gemessen.

Sie wird am Modell mit dem Schnell-Marker dargestellt.

Zum Beginn der nächsten Initiativephase eines Modells wird der Marker wieder entfernt.

Sie kommt unter anderem beim [Fernkampf](#schnelle-bewegungen-des-ziels) zur Anwendung.

### Liegende Modelle

Liegende Modelle gelten als eine Größenstufe kleiner als sie sind.
Kleine Modelle werden dadurch nicht noch kleiner.

Das [Sichtfeld](#sichtfeld) liegender Modelle ist um eine Stufe verschlechtert.

### Passierbarkeit

Passierbarkeit ist eine Eigenschaft von [Gelände](#gelände) und wird mit einer Stufe von 0 bis 2 angegeben.

Die Kosten jeder Bewegungsaktion innerhalb eines Geländetyps werden um die entsprechende Stufe erhöht.

Auf Wunsch kann ein Bewegungstest abgelegt werden der bei Gelingen die Kosten um 1⊙ verringert.
Bei durchgehenden Bewegungsaktionen ist nur ein Bewegungstest notwendig und nicht für jede einzelne Bewegungsaktion.

## Gelände

TODO

Geländearten

Boni und Mali

### Deckung

Jedes Objekt kann als Deckung verwendet werden wenn es das Modell mindestens zur Hälfte verdeckt.

Es wird dabei zwischen 2 verschiedenen Stufen von Deckungen unterschieden:

#### Stufe I Deckung

Besteht aus Holz, Plastik, Blech oder auch einer Ziegelmauer.
Letztendlich alles was nicht zur direkten Abwehr von Beschuss geeignet ist.

Dazu zählen auch befreundete Modelle die mindestens eine Stufe größer sind.

#### Stufe II Deckung

Besteht aus Sandsackbarrieren, Beton oder Stahl und ist zur direkten Abwehr von Beschuss geeignet.

Wenn ein Modell diese Deckung berührt, erhält es einen Bonus von +2 auf seine Verteidigungswürfe bei Fernkampf.

### Geländeteil

Alle Objekte auf dem Spielfeld die kein Modell sind werden als Geländeteil bezeichnet.

Ein Geländeteil kann dabei für sich allein stehen, oder fällt unter einen der nachfolgend genannten Geländetypen.

### Geländetyp

Man versteht darunter räumlich begrenzte Abschnitte auf dem Spielfeld welche Sonderregeln unterliegen.

So brauchen bspw. keine einzelnen Bäume (die umkippen könnten) als Wald aufgestellt werden.
Stattdessen wird eine Fläche als Wald deklariert und die angegebenen Sonderregeln gelten dort automatisch.

Das ist unabhängig davon, ob ein Modell sich "in" oder "auf" einem Geländetyp befindet.
Befindet sich ein Modell "darüber" (weil es bspw. fliegt) ist es nicht davon betroffen.

Die angegebene Deckung gilt auch wenn sich ein Modell "hinter" einem Geländetyp befindet.

!!! summary Dickicht

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |1|Stufe I|

!!! summary Gebäude

    Alle intakten Gebäude fallen unter diesen Geländetyp.

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |0|Stufe I|

!!! summary Krater

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |2|Stufe I|

    Die Deckung wikt nur gegen Beschuss außerhalb.

!!! summary Ruine

    Alle teilweise zerstörten Gebäude fallen unter diesen Geländetyp.
    
    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |1|Stufe I|

    Wenn ein stehendes Modell sich bewegt muss ein Bewegungstest durchgeführt werden.
    Bei Misslingen stürzt das Modell und gilt als liegend.

!!! summary Straße

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |0|-|

!!! summary Sumpf

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |2|-|

!!! summary Unpassierbar

    Hier kann sich nichts am Boden darüber bewegen.

!!! summary Wald

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |2|Stufe II|

    Der Wahrnehmungsbereich aller Modelle wird halbiert.

!!! summary Wasser

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |2|-|

### Umgebungsbedingungen

Umgebungsbedingungen sollen die Umgebung darstellen in der das Gefecht stattfindet, ohne unter Anderem die Anzahl an Geländeteilen unnötig zu erhöhen.

So könnte natürlich das gesamte Spielfeld mit viel Wald zugestellt werden.
Dies benötigt einerseits viele Geländeteile und erschwert andererseits das Spielgeschehen da permanent geschaut werden muss, ob sich ein Modell in einem Geländetyp befindet.

Sie gelten immer für das gesamte Spielfeld und wirken zusätzlich zu Geländetypen.

!!! summary Arktisch

    TODO

    Auf Hitze basierende Waffen verlieren 1 Punkt ihrer Stärke und 1 Reichweitenband bis zu einem Minimum von 1.

    Der Sichtfeld aller Modelle ist um eine Stufe verschlechtert.

!!! summary Gebäude

    Das gesamte Spielfeld ist der Innenraum eines Gebäudes.

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |0|Stufe I|

!!! summary Ländlich

    TODO

!!! summary Mond

    Projektilwaffen erhalten ein weiteres Reichweitenband.

!!! summary Schwerelosigkeit

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |2|-|

    Projektilwaffen erhalten ein weiteres Reichweitenband.

!!! summary Urban

    |Passierbarkeit|Deckung|
    |:--:|:--:|
    |0|Stufe I|

    Der Zwischenraum zwischen Gebäuden wird regeltechnisch als vom Geländetyp Straße angesehen.

!!! summary Wildnis

    TODO

    Jede Waffe verliert 1 Reichweitenband bis zu einem Minimum von 1.

!!! summary Wüste

    TODO

    WN wird bei Tests um 1 erhöht. Nicht der Wahrnehmungsbereich.

    Jede landgestüzte Bewegung ist erschwert.

## Schadens- & Verteidigungsprofile

Verschiedene Spielmechaniken erzeugen Schaden.
Dies kann ein Modell sein das ein anderes Modell beschießt oder im Nahkampf angreift oder auch Effekte die im Spiel auftreten.

Um Schaden abzuwehren gibt es verschiedene Möglichkeiten wie bspw. Rüstung, Schilde oder Felder.

### Schadensprofil

Ein Schadensprofil wird immer durch genau einen Schadenstyp (z.B. Kinetik), die Stärke, den Schaden und eventuellen Effekten angegeben.

![schadensprofil](Grafiken/Abbildungen/schadensprofil.png)

### Verteidigungsprofil

Verteidigung wird immer durch ein oder mehrere Verteidigungstypen (z.B. Stich), den Schutz und eventuellen Effekten angegeben.

![verteidigungsprofil](Grafiken/Abbildungen/verteidigungsprofil.png)

### Schadens- / Verteidigungstypen

Schadens- und Verteidigungstypen haben eine minimale Stufe von 1 und eine maximal Stufe von 3.
Jede Stufe wird durch ein „+“ rechts vom eigentlichen Symbol für den Typen dargestellt.
Symbole für Schadenstypen werden dabei immer in rot, und Verteidigungstypen immer in grün dargestellt.

!!! example Beispiel

    |Typ|Stufe 1|Stufe 2|Stufe 3|
    |--|:--:|:--:|:--:|
    |Schaden kinetisch|![verteidigungsprofil](Grafiken/Schadenstyp/Schaden_1.png){width=40pt}|![verteidigungsprofil](Grafiken/Schadenstyp/Schaden_2.png){width=40pt}|![verteidigungsprofil](Grafiken/Schadenstyp/Schaden_3.png){width=40pt}|
    |Verteidigung schnitt|![verteidigungsprofil](Grafiken/Schadenstyp/Verteidigung_1.png){width=40pt}|![verteidigungsprofil](Grafiken/Schadenstyp/Verteidigung_2.png){width=40pt}|![verteidigungsprofil](Grafiken/Schadenstyp/Verteidigung_3.png){width=40pt}|

### Schadens- / Verteidigungseffekte

Ein Schadens- oder Verteidigungsprofil kann über keine oder mehrere Effekte verfügen.

Beim Schadenswurf und Verteidigungswurf werden alle zutreffenden Effekte des Schadensprofils und Verteidigungsprofils angewendet.
Ein im Verteidigungsprofil enthaltener Schadenseffekt neutralisiert diesen und er kommt nicht zur Anwendung.

!!! example Beispiel

    Ein Modell wird mit einer Pistole mit dem Effekt „Explosiv“ beschossen.
    Der Angreifer dürfte nun normalerweise seine Würfel einmal neu würfeln.
    Ist aber in der Rüstung des Verteidigers ebenso der Effekt „Explosiv“ gelistet, kommt dieser Effekt nicht zu Geltung.

### Symbolerläuterung

Diese Symbole sind auf der Einheitenkarte zu finden.

|Symbol|Name|Bedeutung|
|:--:|--|--|
|![schaden](Grafiken/Waffe/schaden.png){width="40pt"}|Schaden|Es stellt den effektiven Verlust an Trefferpunkten am Modell dar.|
|![stärke](Grafiken/Waffe/stärke.png){width="40pt"}|Stärke|Es stellt die effektive Wirkungshöhe der Waffe dar.|
|![schutz](Grafiken/Rüstung/schutz.png){width="40pt"}|Schutz|Es stellt die effektive Wirkungshöhe der Rüstung dar.|

### Schadens- und Verteidigungswurf

Beide Spieler führen einen vergleichenden Wurf durch.
Der Angreifer addiert die Stärke seiner Waffe, dies wird auch *Schadenswurf* genannt.
Der Verteider addiert den Schutz seiner Rüstung, dies wird auch *Verteidigungswurf* genannt.

Hierbei müssen auch alle Effekte angewendet werden.

!!! todo

    Der Spieler der den Schaden austeilt addiert die Stufe seines Schadenstyps.

    Der Spieler der sich gegen den Schaden verteidigt prüft ob der Schadenstyp in seinem Verteidigungsprofil vorhanden ist und addiert dessen Stufe.
    Ohne entsprechenden Verteidigungstyp bekommt er keinen Bonus.

Nun wird die folgende Tabelle konsultiert:

|Höheres Ergebnis|Auswirkungen|
|--|--|
|Verteidiger|Nichts passiert.|
|Gleichstand|Der Verteidiger erleidet einen Schock.|
|Angreifer|Der Schaden wird angewendet. TODO Spielt die Differenz eine Rolle?|

### Schadensanwendung

Wenn der Schaden zur Anwendung kommt, wird er von den aktuellen Trefferpunkten des Verteidigers abgezogen.

Falls seine Trefferpunkte auf genau 0 sinken gilt er als ausgeschaltet und wird an Ort und Stelle auf die Seite gelegt, verbleibt somit jedoch im Spiel und kann wiederbelebt bzw. repariert werden.
Solange er über genau 0 Trefferpunkte verfügt, kann er weder Aktionen noch Reaktionen ausführen.

Sinkt sie unter 0 wird er aus dem Spiel entfernt, da eine Wiederherstellung nicht mehr möglich ist.

Falls der Verteidiger überlebt und jetzt noch mindestens die Hälfte (abgerundet) seiner maximalen Trefferpunkte besitzt erleidet er einen [Schock](#schock).
Wenn er weniger als die Hälfte seiner maximalen Trefferpunkte besitzt verfällt er in einen [kritischen Zustand](#kritischer-zustand).

Auf der [Einheitenkarte](#einheitenkarte) ist dies daran zu erkennen, dass das erste orange Kästchen der Trefferpunkte markiert ist.

### Schock

Wenn ein Modell einen Schock erleidet muss es einen KO-Wurf ablegen.
Misslingt dieser verliert es sofort 1 AP.
Wenn es über keine AP mehr verfügt erhält es stattdessen einen Schock-Marker.

Ein Modell mit Schock-Markern verliert zum Beginn einer Runde automatisch 1 AP pro Marker woraufhin diese Marker entfernt werden.
Sollten noch Schock-Marker übrig sein obwohl alle AP verbraucht sind, verbleiben die übrigen Marker bis zur nächsten Runde um dann abgezogen zu werden.

### Kritischer Zustand

Der kritische Zustand wird automatisch angewendet.

Ein Modell kann nur einmal in den kritischen Zustand verfallen.
Würde dies ein weiteres mal passieren, wird dies wie normaler Schock behandelt.

Der weiße W6 für die Anzeige der Aktionspunkte wird für das Modell gegen einen roten W6 ausgetauscht.

!!! TODO KO-Wurf um AP-Verlust zu verhindern?

Das Modell verliert sofort 2 AP und erhält für den Rest des Spiels einen Malus von -1 auf alle seine Attributswürfe.
Wenn es über keine AP mehr verfügt erhält es stattdessen Schock-Marker.

### Schadens- und Verteidigungstypen

|Symbol|Name|Bedeutung|
|--|--|--|
|![kinetisch](Grafiken/Schadenstyp/typ_kinetik.png){width=40pt}|Kinetik|Alles das irgendwie als Projektil bezeichnet werden kann.|
|![schlag](Grafiken/Schadenstyp/typ_schlag.png){width=40pt}|Schlag|Jede stumpfe Gewalteinwirkung.|
|![schnitt](Grafiken/Schadenstyp/typ_schnitt.png){width=40pt}|Schnitt|Jedwede Art von Schneiden.|
|![strahl](Grafiken/Schadenstyp/typ_strahl.png){width=40pt}|Strahl|Alle immateriellen Arten von Schaden.|

### Übersicht der Schadens- und Verteidigungseffekte

|Symbol|Name|Auswirkungen|
|--|--|--|
|![desintegrator](Grafiken/Effekt/effekt_desintegrator.png){width=40pt}|Desintegrator|Der Schutz der Rüstung wird nach gewonnenem Schadenswurf permanent um 2 gesenkt.|
|![explosiv](Grafiken/Effekt/effekt_explosiv.png){width=40pt}|Explosiv|Der Schadenswurf darf einmal neu gewürfelt werden. Das neue Wurfergebnis muss verwendet werden.|
|![monomolekular](Grafiken/Effekt/effekt_monomolekular.png){width=40pt}|Monomolekular|Wenn es zum Verlust von Trefferpunkten kommt muss der Verteidiger einen KO-Wurf ablegen. Wenn dieser misslingt wird der Verlust verdoppelt.|
|![panzerbrechend](Grafiken/Effekt/effekt_panzerbrechend.png){width=40pt}|Panzerbrechend|Der Schutz der Rüstung wird für den Verteidigungswurf halbiert (aufgerundet). Wird durch jedes Feld aufgehalten.|
|![trauma](Grafiken/Effekt/effekt_trauma.png){width=40pt}|Trauma|Anstatt Trefferpunkte zu verlieren, erhält das getroffene Modell eine Anzahl an Schocks in Höhe des Schadens.|
|![schrapnell](Grafiken/Effekt/effekt_schrapnell.png){width=40pt}|Schrapnell|Boni auf den Verteidigungswurf die durch Deckung oder Tarnung zustande kommen werden nicht angewendet.|
|![vibro](Grafiken/Effekt/effekt_vibro.png){width=40pt}|Vibro|Der Angreifer darf den Verteidiger zwingen neu zu würfeln, wobei das neue Wurfergebnis verwendet werden muss.|

### Schadenseffekte

|Symbol|Name|Auswirkungen|
|--|--|--|
|![struktur](Grafiken/Effekt/effekt_struktur.png){width=40pt}|Strukturschädigend|Waffen ohne diesen Effekt fügen Modellen mit dem Effekt „Strukturverstärkung“ nur den halbierten (abgerundeten) Schaden zu.|

### Verteidigungseffekte

|Symbol|Name|Auswirkungen|
|--|--|--|
|![komposit](Grafiken/Effekt/effekt_komposit.png){width=40pt}|Kompositpanzerung|Der Verteidiger darf einmal neu würfeln, wobei das neue Wurfergebnis genommen werden muss.|
|TODO|Schockabsorbierend|TODO|
|![struktur](Grafiken/Effekt/effekt_struktur.png){width=40pt}|Strukturverstärkt|Modelle mit diesem Effekt erhalten von Waffen ohne den Effekt „Strukturschädigend“ immer nur den halbierten (abgerundeten) Schaden.|

## Waffen

Waffen verfügen über ein Schadensprofil.

### Fernkampfwaffen

Eine Schusswaffe verfügt zusätzlich über eine Reichweite in Form eines [Reichweitenbandes](#reichweite) und einer Angabe für eventuelles [Autofeuer](#autofeuer).

### Nahkampfwaffen

Sie verfügen über kein Reichweitenband, da sie nur in direktem Basekontakt eingesetzt werden können.

### Waffenklassen

Durch Waffenklassen wird unterschieden wie groß und damit unhandlich eine Waffe bzw. wie komplex sie zu bedienen ist.
Je größer/komplexer desto höher die Waffenklasse.

Waffenklassen werden mit „WK“ abgekürzt.
WK I steht somit für Waffen der Klasse 1.

### Schwerfällige Waffen

Manche Waffen sind schwerfällig und können dadurch im [Fernkampf](#schwerfällige-waffen-im-fernkampf) und [Nahkampf](#schwerfällige-waffen-im-nahkampf) nur mit Einschränkungen verwendet werden.

Auf der Einheitenkarte wird dies mit einem Kreis um die Waffenklasse ausgewiesen:

![unhandlich](Grafiken/Waffe/unhandlich.png){width=40pt} {align=center}

### Einmalnutzung von Waffen

Bestimmte Waffen wie bspw. Speere, Granaten oder spezielle Munitionstypen können nur in einer begrenzten Anzahl eingesetzt werden.

Auf der Einheitenkarte ist dies mit kreisförmigen Markern unmittelbar beim Namen der Waffe vermerkt.
Die Anzahl an leeren Markern zeigt an, wie oft die Waffe noch verwendet werden kann.

Bei jeder Verwendung **muss** ein Marker gestrichen werden.

!!! example Beispiel

    Für eine Schockgranate die 2x verwendet werden kann.

    ![Einmalnutzung Waffe](Grafiken/Abbildungen/einmalnutzung_waffe.jpg)

### Beispiele

#### WK I {align=center}

|Nahkampf|Fernkampf|
|:--:|:--:|
|Knüppel|Maschinenpistole|
|Messer|Pistole|
| |Schleuder|
| |Wurfstern|

#### WK II {align=center}

|Nahkampf|Fernkampf|
|:--:|:--:|
|Morgenstern|Armbrust|
|Schwert|Bogen|
|Speer|Gewehr|
| |Speer|

#### WK III {align=center}

|Nahkampf|Fernkampf|
|:--:|:--:|
|Axt|Granatwerfer|
|Hellebarde|Maschinengewehr|
|Vorschlaghammer| |
|Zweihänder| |

#### WK IV {align=center}

|Nahkampf|Fernkampf|
|:--:|:--:|
|Kettensäge|Panzerfaust|
| |Scharfschützengewehr|

#### WK V {align=center}

|Nahkampf|Fernkampf|
|:--:|:--:|
|Abrissbirne|Arbalest|
| |Lafettengeschütz|
| |Panzerkanone|

## Verteidigung

### Rüstung

TODO

Rüstungen verfügen über ein Verteidigungsprofil.

#### Selbsttragend

Das Gewicht von selbsttragenden Rüstungen wird für die [Tragkraft](#tragkraft) eines Modells ignoriert.

### Schilde

Unter Schilden versteht man alle Arten von „Platten“ die zur Verteidigung getragen werden.

Schilde geben dem Träger +1W12 beim Verteidigungswurf im Nahkampf und gegen jeden Beschuss der das Modell aus einem 180° Bereich von vorne trifft.

!!! TODO Stattdessen Verteidigungswurf wiederholen?

!!! TODO Modell hat nur noch eine Hand frei?

## Fernkampf

TODO
Kleiner Einleitungstext was Fernkampf ist
blah blah yadda yadda

### Fernkampfwurf

Dies ist ein normaler FK-Wurf.
Bei Erfolg wurde das Ziel getroffen.

Wenn das Ziel [Trefferzonen](#trefferzonen) hat muss mit 1W12 die getroffene Trefferzone ausgewürfelt werden.

### Aktionen: Fernkampf

!!! danger Normaler Schuss - WK+1 ⊙

    Das Modell führt einen normalen Fernkampfwurf aus.

!!! danger Feuerbereitschaft - 1 ⊙

    !!! note ""

        Kann sinnvoll nur als letzte Aktion innerhalb einer Initiativephase durchgeführt werden.
        Jede weitere Aktion beendet die Feuerbereitschaft automatisch.

    Das Modell befindet sich maximal bis zum Beginn seiner nächsten Initiativephase in Feuerbereitschaft.
    Es verliert sie dann automatisch.

!!! danger Komplex: Gezielter Schuss - WK+2 ⊙

    Das Modell erhält +1 für seinen Fernkampfwurf.
    Außerdem werden für diesen Schuss die Reichweitenbänder verdoppelt.
    
    Er ist nicht in Kombination mit Autofeuer einsetzbar.

!!! danger Komplex: Schnellschuss - WK ⊙

    Das Modell erhält -2 bei seinem Fernkampfwurf.

### Reaktionen: Fernkampf

!!! warning Reaktionsfeuer - WK+1 ⊙

    !!! note ""

        Bedingungen:

        Das Modell muss sich in Feuerbereitschaft befinden.
        
        Nur mit Schusswaffen der WK I und II.

        Kann zu jedem beliebigen Zeitpunkt innerhalb einer gegnerischen Initiative-Phase durchgeführt werden.
        
        Der Beschuss darf nur auf das Modell dessen Initiativephase gerade gilt gerichtet sein.
    
    Das Modell führt einen normalen Fernkampfwurf aus.
    
    Der Schütze erhält einen zusätzlichen Malus von -1 auf seinen Fernkampfwurf.
    
    Wenn ein Ziel aus Deckung auftaucht oder sich in den Wahrnehmungsbereich hinein bewegt erhält der Schütze einen weiteren Malus von -1 auf seinen Fernkampfwurf.

    Das Modell verliert danach automatisch seine Feuerbereitschaft.

### Auswahl eines Ziels

Damit ein Ziel beschossen werden kann muss eine Sichtlinie zu ihm gezogen werden können.

Sollte sich im Gefahrenbereich keine [direkte Bedrohung](#direkte-bedrohung) befinden, welche bekämpft werden muss, kann das Ziel frei gewählt werden.

### Reichweite

Die Reichweite einer Waffe ist in Reichweitenbändern in der Form X/Y angegeben.
X gibt dabei an, wie groß die Reichweitenbänder sind, Y wie oft diese anwendbar sind.

Auf der Einheitenkarte wird dies unter folgendem Symbol ausgewiesen:

![reichweite](Grafiken/Waffe/reichweite.png){width="40pt"} {align="center"}

Pro vollständig ausgenutztem Reichweitenband erhält ein schießendes Modell einen Malus von -1 auf seinen Fernkampfwurf.

Eine Waffe kann nicht weiter als ihr maximales Reichweitenband schießen.

!!! example Beispiel

    Eine Pistole verfügt über den Wert 20/3.
    Sie hat also 3 Reichweitenbänder, und kommt damit auf eine maximale Reichweite von 60cm
    
    Der Fernkampfwurf für ein Ziel in einer Entfernung von 16cm erhält keinen Malus, bei 42cm würde sich ein Malus von -2 ergeben da sich das Ziel im 3. Reichweitenband befindet.

### Beschuss von getarnten Modellen

Es können nur [aufgeklärte](#aufklärung) getarnte Modelle beschossen werden.

### Indirekter Fernkampf

Bei indirektem Fernkampf kann ein Punkt oder Modell auf dem Spielfeld beschossen werden der durch das Modell nicht einsehbar ist.
Er muss sich aber im [Sichtfeld](#sichtfeld) befinden.

Der Trefferwurf für indirekten Fernkampf erhält immer einen Malus von -4.
Sofern der beschossene Punkt durch ein befreundetes Modell einsehbar ist wird nur ein Malus von -2 angewendet.

Dadurch getroffene Modelle werden immer so behandelt als ob sie sich in Deckung Stufe II befinden.

Waffen welche für indirekten Fernkampf eingesetzt werden können besitzen das folgende Symbol.

![indirekt](Grafiken/Waffe/indirekt.png){width="40pt"} {align="center"}

### Fernkampf-Modifikatoren

#### Größe des Ziels

|Typ|Modifikator|
|:--:|:--:|
|kleines Ziel|-1|
|mittleres Ziel|±0|
|großes Ziel|+1|
|riesiges Ziel|+2|

#### Deckung des Ziels

|Stufe|Modifikator|
|:--:|:--:|
|I|-1|
|II|-2|

#### Schwerfällige Waffen im Fernkampf

Sie erhalten bei Beschuss von kleinen und mittleren Zielen einen Malus von -3 auf den Fernkampfwurf.

#### Liegender Schütze

Liegende Schützen erhalten +1 auf den Fernkampfwurf.

#### Schnelle Bewegungen des Ziels

Auf Ziele die sich in [schneller Bewegung](#schnelle-bewegungen) befinden, gibt es einen Malus von -1 auf den Fernkampfwurf.

### Autofeuer

Waffen können über den Wert „Autofeuer“ (AF) verfügen der im Bereich 1-4 liegt.
Jeder Punkt AF wird hierdurch als 1 zusätzlicher Schuss behandelt.

Auf der Einheitenkarte wird dies mit dem folgendem Symbol ausgewiesen, wobei jede Patrone für eine Stufe Autofeuer steht.

![patrone](Grafiken/Waffe/patrone.png){height="40pt"} {align="center"}

Schüsse können dementsprechend auf 1 bis 5 Ziele aufgeteilt werden, wobei sich jedes Ziel bis zu maximal 3cm vom letzten Ziel befinden darf.
Jeder Wechsel des Ziels führt zu einem kumulativen Malus von -1 auf den Fernkampfwurf.

Falls mehrere Schüsse einem Ziel zugeteilt werden, gibt jeder Schuss nach dem Ersten einen Bonus von +1 auf den Fernkampfwurf und +1 beim Schadenswurf.
Es wird also nur 1 Schuss, dafür aber mit den beschriebenen Boni ausgewürfelt.

!!! example Beispiel

    Eine Maschinenpistole hat AF 3 und wird von einem Modell mit FK 5 abgefeuert.

    Entweder
    - Es feuert alle 4 Schuss auf ein Modell ab und erhält dadurch einen Bonus von +3 auf seinen Fernkampfwurf und +3 auf den anschließenden Schadenswurf.
    
    oder
    - Es feuert jeweils 2 Schuss auf 2 verschiedene Ziele ab und erhält dadurch für beide Ziele einen Bonus von +1 auf seinen Fernkampfwurf (wobei sich für das zweite Ziel der Bonus durch den Zielwechsel aufhebt).
    Der Bonus von +1 für den Schadenswurf gilt jedoch für beide Ziele.

### Flächenwaffen

Flächenwaffen erzeugen an ihrem Trefferpunkt eine Flächenwirkung die im jeweiligen Waffenprofil in cm angegeben ist und eine kreisrunde Fläche mit diesem Radius in cm beschreibt.

Auf der Einheitenkarte wird dies mit dem folgendem Symbol ausgewiesen, wobei die Zahl den Radius angibt.

![radius](Grafiken/Waffe/radius.svg){width="40pt"} {align="center"}

Wenn bei einer Flächenwaffe der Fernkampfwurf misslingt, wird der gewürfelte Wert mit dem zu erreichenden verglichen.
Die Differenz * 3cm gibt an, wie weit der Trefferpunkt in zufälliger Richtung vom eigentlichen Zielort entfernt platziert wird.
Die maximale Entfernung ist dabei die Hälfte (abgerundet) der geschossenen Distanz.

Sollte der Schütze den neuen Ort nicht einsehen können, muss von ihm aus eine gerade Linie dorthin gezogen werden.
Der Trefferpunkt ist nun dort, wo diese Linie das erste Geländeteil oder das erste Modell kreuzt.

Wenn die Trefferschablone die Base eines Modells vollständig bedeckt, oder sich vollständig innerhalb der Fläche der Base befindet, wird das entsprechende Modell normal getroffen.
Ist nur eine teilweise Überlappung vorhanden wird der Schaden halbiert (aufgerundet).

Wenn das getroffene Modell Deckung der Stufe II berührt, kommt diese voll zur Geltung.

## Nahkampf

TODO Kleiner Einleitungstext was Nahkampf ist
blah blah yadda yadda

Um einen Nahkampf auszuführen, muss die Base des angreifenden Modells die Base des anzugreifenden Modells berühren.

### Nahkampfwurf

Beide Spieler führen einen vergleichenden Wurf auf AGI durch.

Sollte eines der Modelle über eine AGI von 0 verfügen gewinnt automatisch das Andere.

Nun wird die folgende Tabelle konsultiert:

|Höheres Ergebnis|Auswirkungen|
|--|--|
|Verteidiger|Angriff abgewehrt, nichts passiert.|
|Gleichstand|TODO|
|Angreifer|Der Angreifer landet einen Treffer. TODO Spielt die Differenz eine Rolle?|

Wenn das Ziel [Trefferzonen](#trefferzonen) hat muss mit 1W12 die getroffene Trefferzone ausgewürfelt werden.

### Erlaubte Waffen

Im Nahkampf dürfen nur Waffen mit der Reichweite NK (=Nahkampf) verwendet werden.

### Aktionen: Nahkampf

!!! danger Angriff - WK ⊙

    Das Modell führt mit einem anderen Modell einen Nahkampf durch und gilt als der Angreifer.

!!! danger Komplex: Brachialer Angriff - WK+1 ⊙

    Das Modell erhält +2 auf seinen Nahkampfwurf.
    
    Sollte es den Nahkampfwurf verlieren kann der Gegner die Aktion "Riposte" durchführen, auch wenn er sie eigentlich nicht beherrscht.

!!! danger Komplex: Abwehrhaltung - 2 ⊙

    !!! note ""

        Kann sinnvoll nur als letzte Aktion innerhalb einer Initiativephase durchgeführt werden.
        Jede weitere Aktion beendet die Abwehrhaltung automatisch.

    Das Modell befindet sich maximal bis zum Beginn seiner nächsten Initiativephase in Abwehrhaltung.
    Es verliert sie dann automatisch.

    Wenn es in einen Nahkampf verwickelt wird bekommt der Angreifer keinen eventuellen Bonus für eine Angriffsbewegung.
    Das Modell verliert danach automatisch seine Abwehrhaltung.

### Reaktionen: Nahkampf

!!! warning Komplex: Riposte - WK ⊙

    !!! note ""

        Bedingungen:
        
        Kann nur unmittelbar nach einem Nahkampf durch den Verteidiger durchgeführt werden.

        Nur wenn der Angriff erfolgreich abgewehrt wurde.
    
    Das Modell führt mit einem anderen Modell einen Nahkampf durch und gilt als der Angreifer.

!!! warning Komplex: Entwaffnen - WK ⊙

    !!! todo

### Bonus für den Angreifer

Wenn der Angreifer den Angriff durch eine [Angriffsbewegung](#aktionen:-bewegung) einleitet, erhält er einen Bonus von +2 auf den Nahkampfwurf.
Dies gilt nur wenn der Verteidiger sich nicht in Abwehrhaltung befindet.

Sollte der Angriff von außerhalb des [Sichtfeldes](#sichtfeld) des angegriffenen Modells geschehen, erhält der Angreifer einen weiteren Bonus von +1.

### Multiple Gegner

Für jedes befreundete Modell, welches die Base des gegnerischen Modells berührt, gibt es einen Bonus von +1 auf den Nahkampfwurf.

### Schwerfällige Waffen im Nahkampf

Ein Angreifer erhält beim Nahkampfwurf einen Malus von -3, es seih denn der Gegner verwendet auch eine schwerfällige Waffe.

### Größenunterschiede

Sollte eines der beteiligten Modelle größer als sein Gegenüber sein, erhält es einen Bonus von +1 auf seinen Nahkampfwurf für jede Stufe des Unterschieds.
Siehe auch [Größenprofil](#größenprofil).

### Nahkampf mit getarnten Modellen

Es können nur [aufgeklärte](#aufklärung) Modelle angegriffen werden.

### Waffenloser Nahkampf

Infanterie, Mechs und Kolosse können auch ohne eine Nahkampfwaffe im Nahkampf kämpfen und Schaden austeilen.

Der Schadenstyp ist dabei immer Schlag und die Stärke entspricht der Konstitution.
Der Schaden berechnet sich durch die KO geteilt durch 3 (gerundet).
Die Stufe des Schadenstyps und die Waffenklasse sind abhängig von der größe des Modells.

|Größe des Modells|Stufe des Schadenstyp|Waffenklasse|
|:--:|:--:|:--:|
|klein bis mittel|1|I|
|groß|2|II|
|riesig|3|III|

!!! example Beispiel

    Für einen Infanteristen mit einer KO von 6.

    ![unbewaffnet](Grafiken/Abbildungen/unbewaffnet.png)

## Tarnung

Tarnung wird in passive und aktive Tarnung unterschieden, je nachdem was damit möglich ist.
Weiterhin verfügt sie immer über eine Stufe um die Effektivität der Tarnung auszudrücken.

Sie wird am Modell mit dem Tarnungs-Marker dargestellt.

Getarnte Modelle beginnen das Spiel automatisch als getarnt sofern alle Voraussetzungen erfüllt sind.

Jede Tarnung verfügt über eine Stufe, welche die Effektivität der Tarnung widerspiegelt.

### Voraussetzungen für Tarnung

|Typ|Voraussetzung|
|:--:|--|
|passiv|Die Tarnung kann nur aktiviert werden, wenn sich das Modell in Basekontakt mit einem Geländetyp oder einem Geländeteil (welches mindestens über die gleichen Ausmaße wie das Modell verfügt) befindet.|
|aktiv|Aktiv getarnte Modelle können ihre Tarnung überall aktivieren, losgelöst davon, ob sie sich an einem Geländeteil befinden oder nicht.|

### Vorteile von Tarnung

Getarnte Modelle können weder beschossen noch im Nahkampf angegriffen werden.
Damit das möglich ist, müssen sie zuerst aufgeklärt werden.

Sie können nicht durch Flächenwaffen getroffen werden.

Wenn ein getarntes Modell einen Angriff einleitet erhält es für die erste Runde einen Bonus von +1 auf seinen Nahkampfwurf.

#### Besondere Vorteile von aktiver Tarnung

Aktiv getarnte Modelle erhalten immer einen Bonus von +1 auf ihren Verteidigungswurf, egal ob sie aufgeklärt sind oder nicht.

Im Nahkampf erhalten sie einen zusätzlichen Bonus von +1 auf ihren Nahkampfwurf.

### Aufklärung

Ein aufgeklärtes Modell gilt solange als aufgeklärt bis es eine volle Bewegungsaktion durchgeführt hat.
Danach wird seine Tarnung automatisch wiederhergestellt sofern die Voraussetzungen dafür erfüllt sind.

Es kann normal beschossen oder im Nahkampf angegriffen werden.

Wenn ein getarntes Modell einen Angriff einleitet oder eine Fernkampfwaffe abfeuert wird es automatisch aufgeklärt.

### Aktionen: Tarnung

Um ein getarntes Modell gezielt aufzuklären muss die Aktion/Reaktion „Aufklären“ ausgeführt werden.

!!! danger Aufklären - 1 ⊙

    Aufklären bezieht sich immer auf ein konkretes getarntes Modell.

Pro Initiativephase darf pro getarntem Modell nur einmal für Aufklärung getestet werden.

Um ein getarntes Modell aufzuklären muss es sich im Wahrnehmungsbereich befinden.
Zusätzlich muss ein Aufklärungstest durchgeführt werden, welcher um die Stufe der Tarnung erschwert ist.
Dies ist ein normaler WN-Wurf.
Bei Erfolg wurde das getarnte Modell aufgeklärt.

Pro zusätzlich eingesetztem AP kann der Aufklärungstest um 1 erleichtert werden.

### Reaktionen: Tarnung

!!! warning Komplex: Aufklärungsunterstützung - 2 ⊙

    Aufklärungsunterstützung bezieht sich immer auf ein konkretes eigenes Modell, welches versucht aufzuklären.

Für das Modell, welches bei der Aufklärung unterstützen soll, muss sich das aufzuklärende Modell ebenso in seinem Wahrnehmungsbereich befinden.

Das unterstützte Modell erhält +1 auf seinen Aufklärungstest.

## Ausrüstung

Jedes Modell kann über Ausrüstung verfügen die nicht in die Kategorien Waffe oder Rüstung passt.

### Aktionen: Ausrüstung

!!! danger Ausrüstung verwenden - X ⊙

    Das Modell verwendet einen Ausrüstungsgegenstand.
    
    Die dafür nötigen AP-Kosten sind beim Ausrüstungsgegenstand angegeben.

### Regeln

Jede Ausrüstung kann Regeln beinhalten.
Wenn dem so ist werden sie auf der Rückseite der Einheitenkarte ausgegeben.

### Attributsverbesserungen

#### Permanent

Manche Ausrüstung bringt permanente Attributsverbesserungen mit sich.
Diese werden auf der Einheitenkarte direkt in die Attribute mit eingerechnet.

#### Temporär

Temporäre Attributsverbesserungen sind auf der Einheitenkarte nicht in den Attributen mit eingerechnet.
Sie kommen nur zur Anwendung wenn die Ausrüstung aktiv angewendet ist.

### AP-Kosten

Bei manchen Ausrüstungsgegenständen ist angegeben, dass zur Verwendung AP ausgegeben werden müssen.
Um sie zu benutzen muss die Aktion "Ausrüstung verwenden" ausgeführt werden.

Sofern keine AP angegeben sind ist auch keine Aktion für die Verwendung notwendig.

### Einmalnutzung von Ausrüstung

Bestimmte Ausrüstung kann nur in einer begrenzten Anzahl eingesetzt werden.

Auf der Einheitenkarte ist dies mit kreisförmigen Markern unmittelbar beim Namen der Ausrüstung vermerkt.
Die Anzahl an leeren Markern zeigt an, wie oft die Ausrüstung noch verwendet werden kann.

Bei jeder Verwendung **muss** ein Marker gestrichen werden.

!!! example Beispiel

    Für ein medizinisches Spray das 3x verwendet werden kann.

    ![Einmalnutzung Ausrüstung](Grafiken/Abbildungen/einmalnutzung_ausrüstung.jpg)

## Mechs & Kolosse

### Mech

Es sind moderne Hybridwaffensysteme mit der Beweglichkeit eines servounterstützten Panzeranzugs und dem Schutz, sowie Feuerkraft, eines Panzers.
In der Regel haben Mechs eine Größe von 4 bis 6 Meter und fangen bei einem Gewicht von 1,5 Tonnen an.

#### Mechs im Fernkampf

Im Fernkampf kostet sie jede Aktion 1⊙ weniger wenn sie eine Waffe der Klasse 4 oder 5 einsetzen.

### Koloss

Kolosse sind das Equivalent von Mechs im Bereich der Lebewesen.
Große und starke Kreaturen die Schaden austeilen und einstecken können als wären sie ein Panzer.

#### Kolosse im Nahkampf

Im Nahkampf kostet sie jede Aktion 1⊙ weniger wenn sie eine Waffe der Klasse 4 oder 5 einsetzen.

### Geländeausnutzung

Durch ihre enorme Beweglichkeit profitieren Mechs & Kolosse ganz normal von Deckung, da sie sich genau wie Infanterie an diese anschmiegen können.

Aufgrund ihrer Größe können sie allerdings keine normal großen Türen benutzen und Gebäude normal betreten, sowie Fahrzeuge wie Infanterie benutzen.

### Trefferzonen

Mechs & Kolosse werden in die Trefferzonen Rumpf, linker Arm, rechter Arm und Beine unterteilt.

Welche Trefferzone im Fernkampf und Nahkampf getroffen wird, muss mit 1W12 festgestellt werden.
Es können auch Trefferzonenen getroffen werden, die nicht direkt sichtbar sind da.

![trefferzone](Grafiken/Abbildungen/trefferzonen.svg){.img_border} {align="center"}

*Trefferzonen Mechs & Kolosse* {align="center"}

Jede Trefferzone verfügt über eine eigene Anzahl an Trefferpunkten und Auswirkungen wenn diese in den kritischen Zustand oder auf 0 sinken.

Trefferpunkte werden nur für den Rumpf festgelegt.
Für Beine und Arme berechnet sich der Wert jeweils automatisch mit 2/3 des Rumpfes (aufgerundet).

#### Kritischer Zustand bei Mechs & Kolossen

- **Rumpf**

    Wie bei Infanterie.
    Siehe [Kritischer Zustand](#kritischer-zustand).

- **Arme**

    Sowohl im Fernkampf als auch Nahkampf -1 auf den jeweiligen Wurf für jeden Arm im kritischen Zustand.

- **Beine**

    Muss für jede Bewegung einen erfolgreichen KO-Wurf ablegen.

#### Verlust aller Trefferpunkte

- **Rumpf**

    Sinkt in sich zusammen und gilt als ausgeschalten.
    Wird jedoch nicht vom Spielfeld entfernt und gilt nun als Geländeteil.

    Für Mechs muss nun ein KO-Wurf durchgeführt werden.
    Falls er misslingt [detoniert](#detonation) er.

- **Arme**

    Der Arm wird zerstört und die Waffe kann nicht mehr verwendet werden.
    Außerdem wird die AGI um 1 verringert.

- **Beine**

    |W12|Auswirkung|
    |--|--|
    |1-6|Bleibt auf der Stelle stehen und kann sich noch drehen.|
    |7-11|Bleibt auf der Stelle stehen und kann sich **nicht** mehr drehen.|
    |12|Fällt um und gilt als ausgeschalten. Wird jedoch nicht vom Spielfeld entfernt und gilt nun als Geländeteil.|

### Detonation

Sobald eine Mech detoniert entsteht automatisch an diesem Ort eine Explosion welche eine Fläche mit einem Radius in Höhe der KO umfasst.

Der Schadenstyp ist dabei immer Schlag in Stufe 2 und die Stärke entspricht der Konstitution.
Der Schaden liegt bei KO geteilt durch 2 (gerundet).
Zusätzlich wirkt der Schadenseffekt „Explosiv“.

Nach der Detonation wird das Modell vom Spielfeld entfernt.

!!! example Beispiel

    Für einen Mech mit einer KO von 6.

    ![detonation](Grafiken/Abbildungen/detonation.png)

## Drohnen

Unter Drohnen wird alles verstanden das in irgendeiner Weise ferngesteuert ist.
Sie haben keinen eigenen Willen und die Steuerung erfolgt ausschließlich durch den [Kontroller](#kontroller).

Das unterscheidet sie von z.B. Robotern die auch aus eigener Initiative handeln können und somit nicht als Drohnen funktionieren.

### Kontroller

Unter Kontroller versteht man alle Modelle denen eine Drohne zugeordnet ist.
Drohnen können und müssen immer genau einem Kontroller zugeordnet sein.
Dies geschieht vor dem Spiel und kann währenddessen nicht geändert werden.

Seine ihm zugeordneten Drohnen werden gleichzeitig mit ihm in seiner Initiativephase aktiv.

Seine Eigenschaften werden nur auf ihn selber angewendet, es seih denn eine Eigenschaft sagt explizit etwas anderes aus.

Einem Kontroller kann pro 3 Punkte EH jeweils eine Drohne zugeordnet werden.

!!! example Beispiele

    Ein Modell verfügt über eine EH von 5.
    Ihm kann also nur 1 Drohne zugeordnet werden.

    Mit einer EH von 6 könnten ihm 2 Drohnen zugeordnet werden.

### Drohnen ohne Kontroller

Drohnen deren Kontroller nicht mehr auf dem Spielfeld präsent oder ausgeschaltet ist versuchen das Spielfeld so schnell es geht zu verlassen.

Da sie über keine eigene AGI verfügen werden sie innerhalb einer Runde immer zuletzt aktiviert.

Während jeder Aktivierung benutzen sie alle ihre AP um sich zur nächst gelegenen Spielfeldkante zu bewegen und das Spielfeld letzten Endes zu verlassen.

Da sie dabei einem sehr rudimentärem Programm folgen ignorieren sie Bedrohungen, nutzen aber das Gelände entsprechend ihrer [Bewegungsart](#bewegungsart) korrekt aus.
Das heist, sie springen bei ihrer Flucht nicht sinnlos von Gebäuden etc.

Sobald der zugeordnete Kontroller wieder am Spielgeschehen teilnimmt funktionieren sie wieder wie gewohnt

### AP von Drohnen

Jede Drohne verfügt über 2 AP.
Für sie können weitere AP verwendet werden indem die AP des zugeordneten Kontrolllers ausgegeben werden.

### Attribute von Drohnen

Drohnen verfügen nicht über die Attribute AGI, FK und EH.
Jeder Wurf auf eines dieser Attribute verwendet immer die Attribute des zugeordneten Kontrollers.

### Gefahrenbereich von Drohnen

Da sie über keine EH verfügen haben sie auch keinen eigenen [Gefahrenbereich](#gefahrenbereich).
Daraus ergibt sich, dass eine [direkte Bedrohung](#direkte-bedrohung) für sie nicht existiert.
Sie müssen aber wenn möglich aktiv werden um gegen eine direkte Bedrohung ihres Kontrollers aktiv zu werden.

### Schocks bei Drohnen

[Schocks](#schock) funktionieren grundsätzlich wie bei allen anderen Modellen.

Die einzige Besonderheit besteht darin, dass der Kontroller zum Beginn einer Runde seine eigenen AP ausgeben kann um eventuelle Schock-Marker von seinen ihm zugeordneten Drohnen zu entfernen.

### Zerstörung einer Drohne

Sobald eine Drohne als ausgeschalten gilt kann es zu einer Rückkopplung auf den Kontroller kommen die ihm Schaden zufügt.

Der Kontroller muss einen EH-Test ablegen.
Misslingt dieser verliert er automatisch 1 Trefferpunkt.

### Drohnen TODO

!!! TODO

    Neue Eigenschaft: Gibt extra AP nur für den Einsatz von Drohnen.

    Kontroller hat eine Reichweite, in der er seine Drohnen steuern kann?  Außerhalb tun sie nichts?

    AGI, FK und EH als "Bonus" auf die Werte des Kontrollers benutzen?

## Thaumaturgie

!!! TODO

    PSI und Magie ist alles Thaumaturgie
