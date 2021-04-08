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

TODO

!!! check Positive Beispieleigenschaft

    TODO

!!! fail Negative Beispieleigenschaft

    asdasd

### Stufen

Manche Eigenschaften verfügen über Stufen wobei die möglichen Stufen im Titel der Eigenschaft angegeben sind.

In der Beschreibung der Eigenschaft wird auf die Stufe mit `[Stufe]` verwiesen.
Dies ist ein Platzhalter der gedanklich gegen die korrekte Stufe (über die das Modell verfügt) ausgetauscht werden muss.

## Bewegung

!!! check 7. Sinn

    Kann die Reaktion "Beschuss Ausweichen" anwenden.

!!! check Bodenhaftung | 1 - 3

    Das Modell darf `[Stufe]` mal seinen Bewegungstest neu würfeln.

!!! check Gecko

    Kann sich auch vertikal an Geländeteilen entlang bewegen.

!!! check Geländegängigkeit | 1 - 3

    Die Passierbarkeit jedes Geländes wird um `[Stufe]` verbessert.
    Sie kann dabei nicht besser als 0 werden.

## Drohnen

!!! check TODO | 1 - 3

    Das Modell hat `[Stufe]` zusätzliche AP, die es aber nur für seine Drohnen ausgeben darf.

!!! check Multitasking | 1 - 3

    Dem Modell können (unabhängig von seiner EH) `[Stufe]` zusätzliche Drohnen zugeordnet werden.

## Fernkampf

!!! check Adlerauge

    Kann die Aktion "Gezielter Schuss" anwenden.

!!! check Aus der Hüfte

    Kann die Aktion "Schnellschuss" anwenden.

!!! check Bewährter Fernkämpfer | 1 - 3

    Das Modell darf `[Stufe]` mal seinen Fernkampfwurf neu würfeln.

!!! check Revolverheld

    Kann mit einer Aktion gleichzeitig 2 Waffen der Klasse I abfeuern.

## Nahkampf

!!! check Agil

    Ignoriert die Nachteile von unhandlich Waffen und Ausrüstungsgegenständen im Nahkampf.

!!! check Bewährter Nahkämpfer | 1 - 3

    Das Modell darf `[Stufe]` mal seinen Nahkampfwurf neu würfeln.

!!! check Flink

    Kann im Nahkampf nicht durch unhandliche Waffen getroffen werden.

!!! check David gegen Goliath

    Wenn das Modell als Angreifer von ausserhalb des Sichtfeldes angreift und über ein kleineres Größenprofil verfügt darf es sich bei Kolossen die Trefferzone aussuchen.

!!! check Gegenangriff

    Kann die Reaktion "Riposte" anwenden.

!!! check Gun-Kata

    Schusswaffen der Klasse I dürfen auch im Nahkampf eingesetzt werden.

!!! check Nahkampfspezialist | 1 - 3

    Der Nahkampfgegner kann `[Stufe]` mal dazu gezwungen werden seinen Nahkampfwurf neu zu würfeln.

!!! check Ohne Rücksicht auf Verluste

    Kann die Aktion "Brachialer Angriff" anwenden.

## Schaden & Verteidigung

!!! check Abgehärtet

    Im kritischen Zustand erhalten die Attributswürfe **keinen** Malus von -1.

!!! check Absolute Regeneration

    Zum Beginn jeder Initiativephase des Modells werden seine Trefferpunkte wieder voll aufgefüllt.

!!! fail Bluter

    Jeder erlittene Schaden wird um 1 erhöht.

!!! check Regeneration

    Zum Beginn jeder Initiativephase des Modells werden seine Trefferpunkte wieder um `[Stufe]` Punkte aufgefüllt.
    
    Greift nur wenn das Modell noch über mindestens 1 Substanzpunkt verfügt.

!!! check Selbstverzehrung

    Pro ausgegebenem Trefferpunkt erhält das Modell 1 AP.

!!! check Stabil

    Für jeden erlittenen Schock muss ein KO-Wurf abgelegt werden.
    Wenn er gelingt hat der Schock keinen Effekt.

!!! check Zäh | 1 - 3

    Jeder erlittene Schaden wird um `[Stufe]` verringert.

## Sonstiges

!!! check TODO

    Um eine Aktion durch eine Reaktion zu unterbrechen wird die Reichweite des Wahrnehmungsbereichs verdoppelt.

!!! check Glück

    Kann pro Runde einmal einen beliebigen eigenen Würfelwurf neu durchführen.

!!! fail Pech

    Kann pro Runde einmal vom Gegner gezwungen werden einen beliebigen eigenen Würfelwurf neu durchführen.

## Tarnung

!!! check TODO

    Kann die Aktion "Aufklärungsunterstützung" anwenden.
