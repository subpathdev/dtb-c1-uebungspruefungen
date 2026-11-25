---
name: "c1-uebungspruefung-hoeren"
description: "Erstellt eine Übungsprüfung Hören für den Deutsch-Test für den Beruf C1 (DTB C1) samt separatem Kandidatenblatt. Nutzen, wenn eine C1-Beruf-Hörübung gewünscht ist."
---

# C1-Übungsprüfung Hören (DTB C1 Beruf)

Erzeugt zwei Dokumente (Docs-Artefakte, auf Deutsch):
1. **Übungsprüfung** (Prüferkopie) mit Überblick, Aufgabenblatt, Transkript mit Rollen, Lösungen und Vorlese-Anleitung.
2. **Kandidatenblatt** nur mit Anweisungen, Aufgaben und Antwortbogen, ohne Transkript und Lösungen.

Gilt nur für den **Deutsch-Test für den Beruf C1 (telc/BAMF)**. Nicht für Goethe C1, telc Deutsch C1 oder telc Deutsch C1 Beruf. Wenn eine dieser Prüfungen gemeint ist, kurz darauf hinweisen.

## Prüfungsformat DTB C1 Hören (Quelle: [telc Übungstest 1 DTB C1, 2022](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf), frei als PDF verfügbar)

Subtest Hören dauert 20 Minuten, dazu 5 Minuten Hören und Schreiben. Die Aufnahme läuft ohne Unterbrechung.

| Teil | Ziel | Textsorte | Aufgaben | Gehört | Länge |
| --- | --- | --- | --- | --- | --- |
| 1 (Standard) | Arbeitsabläufe, Probleme und Vorschläge verstehen | 3 Gespräche, je 2 Personen | pro Gespräch 1 Richtig/Falsch + 1 a/b/c (Nr. 22–27) | einmal, **keine** eigene Lesezeit pro Gespräch | ca. 250–280 Wörter pro Gespräch, ca. 9–10 Sprecherwechsel |
| 2 | Argumentationen nachvollziehen | 4 kurze Gespräche (2–3 Personen) | Zuordnung Sätze a–f, 2 bleiben übrig (Nr. 28–31). Die Sätze sind allgemeine Thesen oder Lebensweisheiten, keine Inhaltszusammenfassungen | einmal, 1 Min. Lesezeit | ca. 100–200 Wörter pro Gespräch |
| 3 | Betriebsbezogene Informationen nachvollziehen | Präsentation der Geschäftsführung mit Publikumsfragen | Beispielaufgabe (0) + 4 × a/b/c (Nr. 32–35) | einmal, 1 Min. Lesezeit | ca. 650–750 Wörter |
| 4 | Anliegen und Bitten erfassen | 5 telefonische Mitteilungen | 5 × a/b/c (Nr. 36–40) | jede einmal | ca. 70–100 Wörter pro Mitteilung |

Standard ist **Teil 1**. Einen anderen Teil nur erstellen, wenn der Nutzer ihn nennt.

## Ablauf

1. **Format prüfen:** Kurz nach dem aktuellen DTB-C1-Modelltest suchen (telc Übungstest 1). Wenn sich das Format geändert hat, die Tabelle oben entsprechend anpassen.
2. **Themen und Gesprächstypen wählen:** Typische Arbeitsplatzsituationen aus verschiedenen Branchen, z. B. Logistik, Kundenservice, Büro, Pflege, Handwerk, IT, Produktion. Keine Themen aus früheren Übungen in diesem Chat wiederholen und keine Beispielthemen aus veröffentlichten Übungs- oder Modelltests kopieren.
   - Die drei Gespräche müssen **unterschiedliche Gesprächstypen** haben, nicht dreimal Problemlösung. Mögliche Typen:
     - Telefonat mit einem externen Dienstleister oder Kunden (Anfrage, Angebot)
     - Personalgespräch: Die Personalabteilung oder Vorgesetzte teilen etwas mit (Beförderung, Weiterbildung, neue Aufgabe)
     - Kollegin oder Kollege erklärt eine Regel, einen Begriff oder ein Verfahren (Arbeitszeit, Urlaub, Datenschutz, Sicherheit)
     - Besprechung zu einem Problem mit Lösungsvorschlag
     - Einweisung in ein Gerät, ein System oder einen Ablauf
3. **Transkript schreiben (Teil 1):**
   - Pro Gespräch eine Frau und ein Mann mit Nachnamen und Funktion, z. B. „Frau Brandt (Schichtleiterin)“. Das hilft einer einzelnen Person beim Vorlesen.
   - Aufbau passend zum Gesprächstyp. Nicht jedes Gespräch endet mit einer Einigung: Es darf auch offen, zögernd oder mit einer Bitte um Bedenkzeit enden (z. B. „Gut, ich bespreche das erst mit meinem Team und melde mich bis Freitag.“).
   - **Detaildichte:** Pro Gespräch 3–5 konkrete Angaben einbauen (Zahlen, Zeiträume, Kosten, Häufigkeiten, Bedingungen), z. B. „zwei Termine pro Monat, jeweils vier Stunden“, „rund 450 Euro pro Person“, „spätestens bis Ende des Quartals“. Mindestens eine Aufgabe prüft so ein Detail.
   - Natürliche gesprochene Sprache: Begrüßung und Telefonformeln („Technischer Support, Hoffmann, guten Tag“), Redewendungen („Was liegt Ihnen denn auf dem Herzen?“, „etwas auf die lange Bank schieben“), Rückfragen und Reaktionen („Wirklich?“, „Das klingt ja vielversprechend.“).
   - C1-Merkmale: Konjunktiv II, Nominalstil, Modalpartikeln, Konnektoren wie „nicht etwa …, sondern“ und „weniger … als vielmehr“, Einwände und Relativierungen. Diese Signalwörter sparsam einsetzen, nicht in jedem Gespräch als Hauptfalle.
   - Keine überprüfbaren Fakten erfinden, die falsch sein könnten. Firmen und Personen sind fiktiv.
   - Wortzahl mit `wc -w` prüfen.
4. **Aufgaben schreiben:**
   - Die Richtig/Falsch-Aussage bezieht sich meist auf die erste Hälfte des Gesprächs, die a/b/c-Aufgabe auf die zweite.
   - Richtig/Falsch-Aussagen mischen: eine prüft ein Detail (Zahl, Ort, Zeitraum, z. B. „findet vor Ort statt“ statt „findet online statt“), eine eine Definition oder Regel, eine eine Ursache oder Haltung. Mindestens eine von drei Aussagen ist „richtig“.
   - Die a/b/c-Aufgabe ist ein Satzanfang mit Komma, den die Optionen vervollständigen, z. B. „Herr Krause bittet darum,“ / „Die Abteilungsleiterin lehnt den Vorschlag ab, weil“ / „Die Schulung kann verschoben werden, wenn“. Fragetypen abwechseln: Absicht, Grund (weil), Bedingung (wenn).
   - Zwei plausible Distraktoren: einer greift ein Wort oder Detail aus dem Text auf, passt aber nicht zur Frage; einer ist ein naheliegender, aber falscher Schluss. Optionen kurz halten (max. ca. 12 Wörter).
   - Lösungsbuchstaben verteilen, nicht zweimal derselbe hintereinander, wenn möglich.
   - Aufgaben folgen der Reihenfolge im Text.
5. **Dokument 1: Übungsprüfung** (Docs-Typ, Titel z. B. „C1 Beruf Hören – Übungsprüfung“). Abschnitte:
   - **Überblick:** Tabelle Echte Prüfung vs. diese Übung, Quelle verlinken.
   - **Aufgabenblatt:** Anweisungen und Aufgaben mit ☐ und jeder Option als eigener Absatz, Antwortbogen.
   - **Hörtext (Transkript):** Einleitende Ansage kursiv, dann vor jedem Gespräch nur „Nummer 22 und 23“ usw., ohne eigene Lesezeit. Sprechernamen fett, ein Absatz pro Redebeitrag, Überschrift pro Gespräch mit Rollen.
   - **Lösungen:** Tabelle Nr. · Lösung · Stelle im Text (kurzes Zitat) · Warum die anderen falsch sind.
   - **Anleitung: Vorlesen als eine Person:** Ansage neutral; Person A normale Stimme und nach links gedreht; Person B andere Tonlage und anderes Tempo und nach rechts gedreht; kurze Pause bei jedem Sprecherwechsel; Vorgesetzte ruhig und bestimmt; nur einmal vorlesen; lösungsrelevante Stellen nicht betonen; Tipp: Namen im Transkript farbig markieren.
6. **Dokument 2: Kandidatenblatt** (eigenes Docs-Artefakt, Titel z. B. „Kandidatenblatt DTB C1 Hören Teil 1“):
   - Kopf: „Deutsch-Test für den Beruf C1 – Übungssatz · Hören · Teil X“, Zeile für Name und Datum, Hilfsmittel: keine.
   - Anweisungen im Prüfungsstil (Sie-Form). Wortlaut für Teil 1: „Sie hören drei Gespräche. Zu jedem Gespräch gibt es zwei Aufgaben. Ist die Aussage dazu richtig oder falsch und welche Antwort (a, b oder c) passt am besten? Markieren Sie Ihre Lösungen für die Aufgaben 22–27 auf dem Antwortbogen. Sie hören die Gespräche einmal.“
   - Aufgaben identisch mit Dokument 1, gegliedert nach Gesprächen.
   - Antwortbogen als Tabelle mit ☐-Feldern, „Punkte: ___ / N“.
   - **Kein** Transkript, **keine** Lösungen, **keine** Hinweise auf Fallen.
7. **Abschluss:** Beide Links nennen. In 1–2 Sätzen das Format und die Themen nennen und anbieten, einen anderen Teil (2–4) zu erstellen.

## Formatregeln

- Optionen a/b/c immer als eigene Absätze mit Leerzeile dazwischen schreiben, sonst verschmelzen sie zu einem Absatz.
- Ankreuzfelder mit ☐, keine Aufgabenlisten (`- [ ]`), weil angehakte Einträge durchgestrichen werden.
- Nummerierung wie in der echten Prüfung (Teil 1: 22–27, Teil 2: 28–31, Teil 3: 32–35, Teil 4: 36–40).
- Keine Behauptungen zu Bestehensgrenzen, die nicht aus einer Quelle stammen. Höchstens einen groben Richtwert als solchen kennzeichnen.