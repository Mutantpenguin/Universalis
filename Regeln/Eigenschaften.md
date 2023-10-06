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

# Universalis - Eigenschaften

![logo](../Grafiken/logo.svg){width="300pt"} {align="center"}

Version 0.1.0 {align="center"}

## Inhaltsverzeichnis

[[toc]]

## Einleitung

Sie werden in "positive" und "negative" Eigentschaften unterschieden.

[//]: # TODO

!!! check Positive Beispieleigenschaft

    [//]: # TODO

!!! cite Neutrale Beispieleigenschaft

    [//]: # TODO

!!! fail Negative Beispieleigenschaft

    [//]: # TODO

### Stufen

Manche Eigenschaften verfügen über Stufen wobei die möglichen Stufen im Titel der Eigenschaft angegeben sind.

In der Beschreibung der Eigenschaft wird auf die Stufe mit `[Stufe]` verwiesen.
Dies ist ein Platzhalter der gedanklich gegen die korrekte Stufe (über die das Modell verfügt) ausgetauscht werden muss.

## Bewegung

!!! check 7. Sinn

    Bekommt bei der Reaktion "Beschuss Ausweichen" einen Bonus von +2 auf den vergleichenden AGI-Wurf.

!!! check Bodenhaftung | 1 - 3

    Das Modell darf jeden Bewegungstest `[Stufe]` mal neu würfeln.

!!! check Gecko

    Kann sich auch vertikal an Geländeteilen entlang bewegen.

!!! check Geländegängigkeit

    Ein misslungener Bewegungstest wegen schwieriger Passierbarkeit führt nicht dazu, dass das Modell umfällt.

!!! check Weitsprung | 1 - 3

    Beim Springen wird die maximale Reichweite um `[Stufe]` * GK erhöht.

## Drohnen

!!! check Instinktive Steuerung | 1 - 5

    Das Modell hat `[Stufe]` zusätzliche AP, die es aber nur für seine Drohnen verwenden darf.

!!! check Multitasking | 1 - 3

    Dem Modell können (unabhängig von seiner EH) `[Stufe]` zusätzliche Drohnen zugeordnet werden.

## Fernkampf

!!! check Adlerauge

    Bei der Aktion "Gezielter Schuss" bekommt das Modell einen weiteren Bonus von +1 auf seinen FK-Wurf.

!!! check Bewährter Fernkämpfer | 1 - 3

    Das Modell darf jeden Fernkampfwurf `[Stufe]` mal neu würfeln.

!!! check Revolverheld

    Kann mit einer Aktion gleichzeitig 2 Waffen der Klasse I abfeuern.

## Kräfte

!!! fail Chaotische Gabe

    Die Auswahl der Kräfte vor Spielbeginn passiert zufällig.

!!! check Fernblockade

    Zum Blockieren von Kräften wird der Wahrnehmungsbereich verdoppelt.

!!! check Fernwirkung

    Das Modell kann Kräfte durch Drohnen hindurch wirken als ob es sich an der Position der Drohne befinden würde.

!!! check Fokussieren | 1 - 3

    Das Modell darf jeden Test zum Einsatz oder Blockieren einer Kraft `[Stufe]` mal neu würfeln.

!!! check Inneres Auge

    Beim Blockieren von Kräften muss das Modell keine Sichtlinie zum Ziel haben.

## Nahkampf

!!! check Stabiler Stand

    Ignoriert die Nachteile von unhandlichen Waffen und Ausrüstungsgegenständen im Nahkampf.

!!! check Bewährter Nahkämpfer | 1 - 3

    Das Modell darf jeden Nahkampfwurf `[Stufe]` mal neu würfeln.

!!! check Flink

    Kann im Nahkampf nicht durch unhandliche Waffen getroffen werden.

!!! check David gegen Goliath

    Wenn das Modell einen Koloss im Nahkampf angreift und über ein kleineres Größenprofil als der Koloss verfügt darf es sich die Trefferzone aussuchen.

!!! check Riposte

    Bekommt bei der Reaktion "Gegenangriff" einen Bonus von +2 auf seinen NK-Wurf falls es sich bei dem vorhergehenden Nahkampf erfolgreich verteidigt hat.

!!! check Gun-Kata

    Schusswaffen der Klasse I dürfen auch im Nahkampf eingesetzt werden.

!!! check Nahkampfspezialist | 1 - 3

    Der Nahkampfgegner kann `[Stufe]` mal dazu gezwungen werden seinen Nahkampfwurf neu zu würfeln.

!!! check Wendig

    Wenn sich das Modell aus dem Nahkampf löst kann der Gegner keinen Gelegenheitsangriff durchführen.

## Schaden & Verteidigung

!!! check Abgehärtet

    Im kritischen Zustand erhalten die Attributswürfe **keinen** Malus von -2.

!!! check Absolute Regeneration

    Zum Beginn jeder Initiativephase des Modells werden seine Trefferpunkte wieder voll aufgefüllt.

!!! fail Bluter | 1 - 3

    Jeder erlittene Schaden wird um `[Stufe]` erhöht.

!!! check Immunität | 1 - 5

    Schaden durch Gift wird um `[Stufe]` verringert.

!!! check Regeneration | 1 - 5

    Zum Beginn jeder Initiativephase des Modells werden seine Trefferpunkte wieder um `[Stufe]` Punkte aufgefüllt.
    
    Greift nur wenn das Modell noch über mindestens 1 Trefferpunkte verfügt.

!!! check Selbstverzehrung | 1 - 3

    Pro ausgegebenem Trefferpunkt erhält das Modell `[Stufe]` AP.

!!! check Stabil

    Für jeden erlittenen Schock muss ein KO-Wurf abgelegt werden.
    Wenn er gelingt hat der Schock keinen Effekt.

!!! check Zäh | 1 - 3

    Jeder erlittene Schaden wird um `[Stufe]` verringert.

## Sonstiges

!!! check Anführer

    Das Modell ist der Gruppenführer.
    
    Darf den vergleichenden Wurf auf EH zur Feststellung der Reihenfolge des Aufstellens der Modelle `[Stufe]` mal wiederholen.

!!! cite Automaton

    Besteht automatisch jeden Paniktest.
    
    Wenn das Modell eliminiert wird explodiert es.
    Radius und Stärke entsprechen der KO.
    Der Schaden liegt bei KO geteilt durch 2 (abgerundet).
    Zusätzlich wirkt der Schadenseffekt „Explosiv“.

!!! check Glück

    Kann pro Runde einmal einen beliebigen eigenen Würfelwurf neu durchführen.

!!! fail Pech

    Kann pro Runde einmal vom Gegner gezwungen werden einen beliebigen eigenen Würfelwurf neu durchführen.

!!! check Tatkräftig

    Darf den vergleichenden Wurf auf AGI zur Feststellung der Reihenfolge innerhalb einer Runde `[Stufe]` mal wiederholen.
