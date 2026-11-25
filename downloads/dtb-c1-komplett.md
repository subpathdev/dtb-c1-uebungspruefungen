---
name: "dtb-c1-komplett"
description: "Erstellt Übungsprüfungen für den Deutsch-Test für den Beruf C1 (DTB C1): Lesen, Schreiben, Hören, Sprachbausteine, Sprechen oder eine ganze Probeprüfung, mit Lösungen. Auch zur Korrektur eigener Texte."
---

# DTB C1 – alle Übungsprüfungen in einer Datei

Diese Datei enthält sechs Anleitungen (Abschnitte unten). Sie ist für KI-Assistenten gedacht, die keine einzelnen Claude-Skills laden können (z. B. ChatGPT oder Gemini).

So arbeitest du mit dieser Datei:

1. Finde heraus, welchen Teil die Person üben möchte, und folge dem passenden Abschnitt:
   - Lesen (Aufgaben 1–18) → Abschnitt `c1-uebungspruefung-lesen`
   - Schreiben (19–21, 41–45, 58) und Korrektur eigener Texte → Abschnitt `c1-uebungspruefung-schreiben`
   - Hören (22–40) → Abschnitt `c1-uebungspruefung-hoeren`
   - Sprachbausteine (46–57) → Abschnitt `c1-uebungspruefung-sprachbausteine`
   - Sprechen / mündliche Prüfung → Abschnitt `c1-uebungspruefung-sprechen`
   - ganze Probeprüfung → Abschnitt `c1-probepruefung-gesamt`
   Ist es unklar, frage kurz nach.
2. Wenn ein Abschnitt sagt, ein Teil-Skill soll „aufgerufen“ werden, lies stattdessen den gleichnamigen Abschnitt in dieser Datei und befolge ihn.
3. Die Abschnitte nennen Werkzeuge von Claude. Nimm das, was du hast:
   - „Docs-Artefakt“ / „Dokument“ → ein Dokument oder eine Datei zum Herunterladen, sonst gut gegliederter Text im Chat. Prüflings-Dokument und Lösungs-Dokument immer getrennt ausgeben.
   - „Skill-Tool“ → den passenden Abschnitt dieser Datei lesen.
   - „TaskCreate“ / Aufgabenliste → eine kurze Liste der Schritte im Chat.
   - „`wc -w` bzw. Python“ → Wörter mit Code zählen, wenn du Code ausführen kannst; sonst sorgfältig schätzen.
   - „separaten Agenten“ → die Aufgaben selbst noch einmal ohne Blick auf die Lösungen lösen.
4. Antworte auf Deutsch.


---

# Abschnitt: c1-probepruefung-gesamt


# C1-Probeprüfung gesamt (DTB C1 Beruf)

Dieser Skill ist **nur der Rahmen**. Alle Inhalte (Texte, Aufgaben, Lösungen, Mustertexte, Bewertungsraster) entstehen mit den Teil-Skills. Formatangaben, Stilregeln, Wortzahlen, Arbeitsanweisungen und Prüfschritte stehen **nur dort** und werden hier nicht wiederholt. Widerspricht etwas hier einem Teil-Skill, gilt für den Inhalt der Teil-Skill und für Ausgabe und Zusammenbau dieser Skill.

## Teil-Skills (Pflicht)

Vor dem jeweiligen Subtest den Teil-Skill mit dem Skill-Tool aufrufen und seine Schritte befolgen (der Name kann je nach Umgebung ein Präfix haben, z. B. `c1-uebungspruefung-lesen:c1-uebungspruefung-lesen`):

| Reihenfolge | Subtest | Aufgaben | Skill-Aufruf |
| --- | --- | --- | --- |
| 1 | Lesen | 1–18 | `c1-uebungspruefung-lesen` |
| 2 | Lesen und Schreiben | 19–21 | `c1-uebungspruefung-schreiben` |
| 3 | Hören | 22–40 | `c1-uebungspruefung-hoeren` |
| 4 | Hören und Schreiben | 41–45 | `c1-uebungspruefung-schreiben` |
| 5 | Sprachbausteine | 46–57 | `c1-uebungspruefung-sprachbausteine` |
| 5 | Schreiben | 58 | `c1-uebungspruefung-schreiben` |
| 6 | Sprechen | 1A–3 | `c1-uebungspruefung-sprechen` |

Fehlt ein Teil-Skill in der Sitzung, das dem Nutzer sagen und nachfragen, statt den Teil frei zu erfinden.

**Abweichungen von den Teil-Skills, die hier gelten:**
- Umfang: Jeder Teil-Skill baut seinen **vollständigen** Subtest. Beim Hören also alle vier Teile (22–40), nicht nur den Standard Teil 1. Beim Schreiben alle drei Aufgaben (19–21, 41–45, 58).
- Keine Rückfragen zum Umfang in den Teil-Skills; das klärt dieser Skill einmal am Anfang.
- Die Teil-Skills erzeugen **keine eigenen Dokumente A/B**. Ihre Inhalte fließen in die vier Dokumente unten.
- Die Formatprüfung (Suche nach dem aktuellen telc-Übungstest) einmal am Anfang für alle Teile machen, nicht fünfmal.
- Die Abschlussschritte der Teil-Skills entfallen; es gilt der Abschluss hier.

## Was nur dieser Skill regelt

### Zeitplan der schriftlichen Prüfung
Lesen 45 Min. → Lesen und Schreiben 20 Min. → Hören 20 Min. → Hören und Schreiben 5 Min. → Sprachbausteine und Schreiben 45 Min. → Pause → mündliche Prüfung. Zeiten mit dem aktuellen telc-Übungstest abgleichen.

### Themenplan über alle Subtests
Vor dem ersten Teil-Skill eine Tabelle aller Texte anlegen (Artikel, Info-Blätter, Forum, Protokoll, Kundenmail, Gespräche, Präsentation, Mitteilungen, Anruf, Lückentexte, Schreib- und Sprechthemen) mit Thema, Branche und fiktiver Firma. Die Teil-Skills verwenden die Themen aus diesem Plan.
- Kein Thema doppelt über Subtests hinweg.
- Branchen breit streuen.
- Firmen- und Personennamen über die ganze Prüfung eindeutig.
- Die Ausschlusslisten der Teil-Skills (Themen aus Übungs- und Modelltests, frühere Übungen im Chat) gelten für den ganzen Plan.

### Ausgabe: vier Docs-Artefakte
1. **Testheft schriftlich (Prüfling):** Deckblatt mit Zeitplan; alle Prüflingsinhalte der Teil-Skills (deren „Dokument A“ bzw. Aufgabenblatt) für 1–58 in Prüfungsreihenfolge; am Ende ein durchgehender Antwortbogen, der die Antwortbögen der Teil-Skills zusammenführt.
2. **Mündliche Prüfung – Aufgabenblätter:** die Blätter für Teilnehmer/in A und B aus `c1-uebungspruefung-sprechen`.
3. **Hörtexte zum Vorlesen:** alle Transkripte und die Vorlese-Anleitung aus `c1-uebungspruefung-hoeren` (22–40) und `c1-uebungspruefung-schreiben` (41–45), in Abspielreihenfolge mit allen Ansagen.
4. **Durchführung, Lösungen und Bewertung (vertraulich):** Überblick mit Themenplan; Durchführungsplan mit eintragbarer Startzeit; kompakter Lösungsschlüssel 1–57 auf einer Seite; danach die Lösungsteile der Teil-Skills (Begründungen, Erwartungshorizonte, Mustertexte, Prüferunterlagen Sprechen, Bewertungsraster); am Ende ein **Ergebnisbogen** mit den Punkten je Fertigkeit (je / 60, Summe / 240), Punktwerte aus den Teil-Skills bzw. dem telc-Übungstest. Bestehensregel nur mit nachgeprüfter Quelle.

Nur wenn der Nutzer ein anderes Format nennt (z. B. Word oder PDF), dieses verwenden.

## Ablauf

1. **Klären** (nur wenn nicht genannt, eine Frage): ganze Prüfung (Standard) oder ohne mündlichen Teil; Wunschbranchen. Sonst mit Standard beginnen.
2. **Aufgabenliste anlegen** (TaskCreate): Formatprüfung, Themenplan, je ein Punkt pro Subtest, Zusammenbau, unabhängige Prüfung.
3. **Formatprüfung** einmal für alle Teile.
4. **Themenplan** erstellen.
5. **Subtests nacheinander** in der Reihenfolge der Tabelle: Teil-Skill aufrufen, Inhalte nach dessen Regeln erstellen (inkl. Wortzählung und Eindeutigkeitsprüfung), Ergebnis als Markdown im Arbeitsordner ablegen (`01_lesen.md`, `02_lesen-schreiben.md` …).
6. **Lösungsverteilung über die ganze Prüfung prüfen:** a/b/c ungefähr gleich häufig, keine langen Folgen gleicher Buchstaben; bei Bedarf Optionen umsortieren und Schlüssel anpassen.
7. **Zusammenbau** der vier Dokumente: zuerst mit Titel und Überschriften anlegen, dann abschnittsweise füllen. Nummerierung 1–58 durchgehend.
8. **Unabhängige Prüfung:** Einen separaten Agenten nur Testheft und Hörtexte lösen lassen, ohne Schlüssel. Jede Abweichung untersuchen und nach den Regeln des Teil-Skills beheben (Distraktor eindeutig machen oder Schlüssel korrigieren).
9. **Abschluss:** Die vier Links mit je einer Zeile Zweck, Themen in 1–2 Sätzen, wer welches Dokument bekommt (Testheft und Aufgabenblätter an Prüflinge; Hörtexte und Durchführung nur an Prüfende). Anbieten, Schreibleistungen zu korrigieren oder den mündlichen Teil als Rollenspiel durchzuspielen (beides über die Teil-Skills).

## Korrekturen nach der Durchführung

Nach der Korrekturregel des jeweiligen Teil-Skills vorgehen; Änderungen im Testheft bzw. im Durchführungsdokument vornehmen.


---

# Abschnitt: c1-uebungspruefung-lesen


# C1-Übungsprüfung Lesen (DTB C1 Beruf)

Erzeugt zwei Docs-Artefakte auf Deutsch:
1. **Dokument A – Prüfling:** Kopf, Anweisungen, Texte, Aufgaben, Antwortbogen. Keine Lösungen, keine Hinweise auf Fallen.
2. **Dokument B – Durchführung:** Überblick, Ablauf, Lösungsschlüssel, Lösungen mit Begründung, Auswertung.

Gilt nur für den **Deutsch-Test für den Beruf C1 (telc/BAMF)**. Nicht für Goethe C1, telc Deutsch C1 oder telc Deutsch C1 Beruf; wenn eine dieser Prüfungen gemeint ist, kurz darauf hinweisen und nachfragen.

## Prüfungsformat DTB C1 Lesen (Quelle: [telc Übungstest 1 DTB C1, 2022](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf), frei als PDF verfügbar)

Subtest Lesen: 45 Minuten für alle Teile, 60 Punkte. Keine offizielle Zeit pro Teil.

| Teil | Ziel | Aufgaben | Textsorte | Länge |
| --- | --- | --- | --- | --- |
| 1 | Informationen zum Arbeitsmarkt suchen | 5 Zuordnungen (Nr. 1–5): Personen zu Artikeln a–h, 3 Artikel bleiben übrig | Personen: je **ein Satz, ca. 7–15 Wörter**; kurze Online-Artikel einer Wirtschaftszeitung mit Überschrift und „→ mehr“ | Artikel je ca. 40–60 Wörter |
| 2 | Einweisungen und Unterweisungen verstehen | Nr. 6 + 8 Richtig/Falsch, Nr. 7 + 9 a/b/c | zwei Info-Blätter aus einer Willkommensmappe (Kopf z. B. „Merkblatt für neue Beschäftigte“, „Seite x von y“) | je ca. 180–220 Wörter |
| 3 | Rahmenbedingungen der Arbeit verstehen | 4 Zuordnungen (Nr. 10–13): Fragen zu Tipps a–f. **Für 1–2 Fragen gibt es keinen passenden Tipp → „x“.** Es werden also nur 2–3 Tipps verwendet, 3–4 bleiben übrig. | Online-Forum (z. B. „Rat und Hilfe im Job“), 4 Fragen + 6 Antworten | Fragen ca. 55–75, Antworten ca. 45–70 Wörter |
| 4 | Aufgaben und Aufgabenverteilung nachvollziehen | 5 × a/b/c (Nr. 14–18), „Welche Antwort passt am besten?“ | Protokoll einer Besprechung der Abteilungsleitungen mit **3 TOPs** | ca. 550–650 Wörter |

Der anschließende Subtest „Lesen und Schreiben“ (Nr. 19–21) gehört **nicht** zu diesem Skill. Dafür den Skill `c1-uebungspruefung-schreiben` verwenden.

## Originalnahe Arbeitsanweisungen

- Teil 1: „Sie lesen online in einer Wirtschaftszeitung und möchten Ihren Freunden einige Artikel schicken. Entscheiden Sie, welcher Artikel a–h zu welcher Person 1–5 passt. Markieren Sie Ihre Lösungen auf dem Antwortbogen.“
- Teil 2: „Lesen Sie die Texte und die Aufgaben 6–9. Ist die Aussage dazu richtig oder falsch und welche Antwort (a, b oder c) passt am besten? Markieren Sie Ihre Lösungen auf dem Antwortbogen.“
- Teil 3: „Lesen Sie die Fragen 10–13. Lesen Sie die Texte a–f. Welche Frage passt zu welchem Tipp? Markieren Sie Ihre Lösungen auf dem Antwortbogen. Für ein bis zwei Fragen gibt es keinen passenden Tipp. Markieren Sie dafür ein x auf dem Antwortbogen.“
- Teil 4: „Lesen Sie das Protokoll und die Aufgaben 14–18. Welche Antwort (a, b oder c) passt am besten? Markieren Sie Ihre Lösungen auf dem Antwortbogen.“

## Stil und Register

- **Teil 1:** Personen sind Privatpersonen/Freunde mit einem knappen Anliegen in einem Satz (z. B. „Lena überlegt, ob sich eine Weiterbildung neben dem Job für sie lohnt.“). Themen dürfen über den Job hinausgehen (Kinderbetreuung, Auswandern, Region, Gehalt, Digitalisierung). Artikel enthalten oft ein Zitat einer namentlich genannten (fiktiven) Expertin, Zahlen oder eine Zeitungsquelle. Mindestens zwei Artikel teilen ein Schlüsselwort mit derselben Person.
- **Teil 2:** Dichter Info-Text im Verwaltungsstil: Passiv und „ist/sind … zu“ (z. B. „sind unverzüglich zu melden“), „obligatorisch“, „grundsätzlich“, Aufzählungen von Bedingungen („nur dann, wenn a) … oder b) …“). Viele Details auf engem Raum. a/b/c-Stämme als Stichwort oder Satzanfang („Schutzkleidung …“, „Ein gelbes Schild an der Tür bedeutet, …“). R/F-Aussagen mit „richtig/falsch?“.
- **Teil 3:** Fragen kreisen oft um Rechte und Pflichten („Darf ich …?“, „Muss ich das hinnehmen?“) und enthalten persönlichen Kontext. Tipps sind Erfahrungsberichte, teils mit allgemeiner Rechtslage – ohne erfundene konkrete Paragrafen oder Fristen. Die Tipps zu den x-Fragen müssen thematisch nah sein (gleiches Stichwort, z. B. Umzug, Kündigung, Probezeit), die eigentliche Frage aber nicht beantworten.
- **Teil 4:** Kopf mit Datum, Zeit, Anwesende (mit Kürzeln wie „KL, Geschäftsführung“), Abwesend, Protokoll, Verteiler; Layout als Tabelle TOP | Inhalt; im Text Kürzel statt Namen („MT schlägt vor …“, „HS gibt zu bedenken …“). Inhalt eher strategisch/wirtschaftlich (Marktentwicklung, Preisstrategie, Werbung, Personal), nicht nur Aufgabenverteilung. Aufgaben fragen nach Positionen, Argumenten und Beschlüssen; Stämme sind unvollständige Satzanfänge („Die Vertriebsleitung befürchtet, …“, „Die Preise für Ersatzteile …“).
- **Allgemein:** Hoher Nominalstil, Fachwortschatz, Partizipialattribute, lange Satzgefüge; Optionen paraphrasieren den Text, statt Wörter zu übernehmen.

## Ablauf

1. **Umfang klären**, falls nicht genannt: ganzer Subtest (Standard) oder einzelner Teil. Prüfung bestätigen (DTB C1).
2. **Format prüfen:** Kurz nach dem aktuellen telc-Übungstest DTB C1 suchen; bei Änderungen die Tabelle anpassen.
3. **Themen wählen:** Arbeitsweltthemen aus verschiedenen Branchen. Keine Themen aus dem telc-Übungstest (z. B. dessen Forum zur Work-Life-Balance) oder anderen veröffentlichten Übungs- oder Modelltests und keine aus früheren Übungen in diesem Chat wiederholen. Firmen und Personen sind fiktiv.
4. **Texte schreiben (C1-Niveau):** Nominalstil, Konjunktiv I/II, Konnektoren wie „nicht etwa …, sondern“, Einwände, Relativierungen. Keine überprüfbaren Fakten erfinden (keine konkreten Gesetze, Zahlen realer Institutionen, Fristen aus Gesetzen). Forumsantworten als Erfahrungen formulieren, nicht als Rechtsauskunft.
5. **Wortzahlen mit `wc -w` bzw. Python prüfen** und auf die Spannen oben bringen.
6. **Aufgaben schreiben:**
   - Teil 1: Distraktoren teilen Schlüsselwörter mit einer Person, treffen aber nicht das Anliegen (z. B. nur das Problem statt einer Lösung, andere Zielgruppe, andere Perspektive).
   - Teil 3: Genau 1–2 Fragen erhalten „x“. Die übrigen Fragen bekommen je einen Tipp; 3–4 Tipps bleiben übrig. Prüfen, dass kein übriger Tipp eine x-Frage doch beantwortet.
   - Richtig/Falsch: Paraphrase einer Textstelle; mindestens eine der beiden Aussagen ist „richtig“. Typische Falle: absolute Formulierung („in jedem Fall“).
   - a/b/c: eine Option wird im Text genannt, aber verworfen; eine ist ein naheliegender, falscher Schluss.
   - Aufgaben folgen der Reihenfolge im Text. Lösungsbuchstaben streuen, möglichst nicht zweimal derselbe hintereinander.
7. **Eindeutigkeit prüfen (Pflicht):** Für jede Aufgabe jeden Distraktor gegen den ganzen Text lesen und fragen: „Ließe sich diese Option mit irgendeiner Textstelle verteidigen?“ Besonders bei Protokollen: Wird ein Vorschlag nur teilweise, bedingt oder für eine Teilgruppe umgesetzt (z. B. „nur bei Verzögerungen“, „nur für einige Kunden“)? Dann Distraktor so umformulieren, dass er eindeutig falsch ist (anderer Zeitpunkt, andere Zielgruppe, ausdrücklich abgelehnt). Zeitliche Einschränkungen im Aufgabenstamm („vor der Umstellung“) reichen allein nicht zur Abgrenzung.
8. **Dokument A** (Titel z. B. „Dokument A – DTB C1 Lesen · Übungssatz (Prüfling)“):
   - Kopf: „Deutsch-Test für den Beruf C1 – Übungssatz · Lesen · Teile 1–4“, Name/Datum-Zeile, „Zeit: 45 Minuten · Aufgaben 1–18 · Hilfsmittel: keine“.
   - Pro Teil: Überschrift mit Ziel, Anweisung kursiv in Sie-Form, Texte, Aufgaben.
   - Antwortbogen als Tabellen pro Teil mit ☐-Feldern; Teil 3 mit Spalten a–f **und x**; am Ende „Richtige Antworten: ___ / 18“.
9. **Dokument B** (Titel z. B. „Dokument B – DTB C1 Lesen · Übungssatz (Durchführung, mit Lösungen)“):
   - **Überblick:** Tabelle Echte Prüfung vs. diese Übung (Themen, Wortzahlen), Formatquelle verlinken.
   - **Ablauf der Durchführung:** Hilfsmittel, Anweisung zum Vorlesen, Gesamtzeit, Zeithinweis nach 40 Min., grobe Zeitempfehlung pro Teil ausdrücklich als eigene Empfehlung kennzeichnen.
   - **Lösungsschlüssel:** kompakte Tabelle, übrig bleibende Texte nennen; in Teil 3 x-Fragen als „x“ eintragen und begründen, warum keiner der Tipps passt.
   - **Lösungen mit Begründung:** pro Teil Tabelle Nr. · Lösung · Stelle im Text (kurzes Zitat) · Warum die Alternativen falsch sind.
   - **Auswertung:** 1 Punkt pro richtiger Antwort; echte Prüfung 60 Punkte; keine erfundenen Gewichtungen oder Bestehensgrenzen; typische C1-Fallen für die Besprechung.
10. **Abschluss:** Beide Links nennen, Format und Themen in 1–2 Sätzen, anbieten, als Nächstes „Lesen und Schreiben“ (19–21) mit dem Skill `c1-uebungspruefung-schreiben` zu erstellen.

## Korrekturen nach der Durchführung

Meldet der Nutzer eine zweideutige Aufgabe, zuerst klären, ob der Satz schon bearbeitet wurde.
- **Noch nicht bearbeitet:** Distraktor in Dokument A eindeutig falsch machen, Begründung in Dokument B anpassen.
- **Schon bearbeitet („zu spät“):** Dokument A **nicht** ändern (bzw. auf die bearbeitete Fassung zurücksetzen). In Dokument B Lösungsschlüssel und Begründungstabelle auf „a oder c (beide werten)“ erweitern, für die zusätzliche Lösung eine Textstelle zitieren und erklären, warum sie vertretbar ist. Höchstpunktzahl bleibt gleich.

## Formatregeln

- Optionen a/b/c und Richtig/Falsch immer als eigene Absätze mit Leerzeile dazwischen.
- Ankreuzfelder mit ☐, keine Aufgabenlisten (`- [ ]`).
- Nummerierung wie in der echten Prüfung (Teil 1: 1–5, Teil 2: 6–9, Teil 3: 10–13, Teil 4: 14–18).
- Beim Ersetzen von Text in Docs auf geerbte Formatierung (z. B. Kursiv) achten; bei Bedarf den ganzen Absatz als Markdown ersetzen.
- Keine Behauptungen zu Bestehensgrenzen ohne Quelle.


---

# Abschnitt: c1-uebungspruefung-schreiben


# C1-Übungsprüfung Schreiben (DTB C1 Beruf)

Erzeugt zwei Docs-Artefakte auf Deutsch:
1. **Dokument A – Prüfling:** Kopf, Anweisungen, Ausgangstexte, Aufgaben, Antwortbogen (E-Mail-Feld, Telefonnotiz, Schreibfeld). Keine Lösungen, keine Mustertexte.
2. **Dokument B – Durchführung:** Überblick, Ablauf, Hörtext (Transkript) für 41–45, Lösungen, Erwartungshorizont, Mustertexte, Bewertungsraster.

Gilt nur für den **Deutsch-Test für den Beruf C1 (telc/BAMF)**. Nicht für Goethe C1, telc Deutsch C1 oder telc Deutsch C1 Beruf. Wenn eine dieser Prüfungen gemeint ist, kurz darauf hinweisen und nachfragen.

Die Sprachbausteine (46–57) gehören zwar zum Subtest „Sprachbausteine und Schreiben“, haben aber einen eigenen Skill (`c1-uebungspruefung-sprachbausteine`).

## Prüfungsformat (Quelle: [telc Übungstest 1 DTB C1, 2022](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf), frei als PDF verfügbar)

| Aufgabe | Subtest / Zeit | Was | Punkte |
| --- | --- | --- | --- |
| 19–20 | Lesen und Schreiben, 20 Min. | 2 × a/b/c zu einer weitergeleiteten E-Mail | je 3 (zählen zu Lesen) |
| 21 | Lesen und Schreiben | Antwort-E-Mail an den Kunden, alle Punkte der Teamleitung umsetzen | Kriterium I: 7 / 5 / 3 / 0 |
| 41 | Hören und Schreiben, 5 Min. | Grund für den Anruf: a Angebot · b Bestellung/Buchung · c Beschwerde | 3 (zählt zu Hören) |
| 42–45 | Hören und Schreiben | Telefonnotiz: 42 Name, 43 Kontakt/Telefon, 44 Weitere Informationen, 45 Zu erledigen | 0,5 + 0,5 + 4 + 1 = 6 |
| 58 | Sprachbausteine und Schreiben, 45 Min. gesamt | Stellungnahme an die Geschäftsführung, Thema A oder B | Kriterium I: 14 / 10,5 / 5,5 / 0 |

**Sprachliche Kriterien, übergreifend für 21 und 58:** II Kommunikative Gestaltung (Struktur, Gliederung, Verknüpfung), III Formale Richtigkeit, IV Spektrum sprachlicher Mittel – je 9 / 7 / 3,5 / 0. Der Subtest Schreiben ergibt so 60 Punkte (7 + 6 + 6 Sprachbausteine + 14 + 27).

Offizielle Wortzahlen gibt es nicht. Längenangaben unten sind eigene Empfehlungen und als solche zu kennzeichnen. Bestehensregeln nur nennen, wenn sie im aktuellen telc-Übungstest nachgeprüft wurden.

## Originalnahe Arbeitsanweisungen

- 19–21: Einleitung „Ihre Teamleitung leitet Ihnen diese E-Mail von einem Kunden weiter und bittet Sie zu antworten.“ · „Welche Lösung (a, b oder c) passt am besten? Markieren Sie auf dem Antwortbogen.“ · „21 Schreiben Sie eine E-Mail an den Kunden in angemessener Sprache. Setzen Sie dabei alle Punkte Ihrer Teamleitung um.“
- 41–45: „Sie hören eine telefonische Mitteilung. Informieren Sie Ihre Kollegin. Notieren Sie die Informationen auf dem Antwortbogen. Sie hören die Mitteilung einmal.“ · „41 Grund für den Anruf – Wählen Sie die richtige Lösung (a, b oder c).“ · „42–45 Notizen schreiben – Schreiben Sie Name, Telefonnummer, weitere Informationen und tragen Sie im Feld ‚zu erledigen‘ ein, was zu erledigen ist.“
- 58: „Wählen Sie eines der folgenden Themen. Die Geschäftsführung hat Sie um eine schriftliche Stellungnahme gebeten. Wägen Sie Vor- und Nachteile ab und führen Sie passende Beispiele an. Legen Sie Ihren eigenen Standpunkt dar und ziehen Sie ein Fazit.“

## Stil und Aufbau

### 19–21 Weitergeleitete E-Mail
- **Oben** die interne Nachricht der Teamleitung (Kopf Von/An/Betreff „FW: …“, Uhrzeit): informell, Du-Form, mündlich gefärbt. Sie enthält **3–5 Handlungspunkte**, teils nur angedeutet („Kannst du mal im System nachsehen, was da passiert ist?“, „Ruf ihn vielleicht einfach an oder so“). Dazu eine Einschätzung oder Sorge (z. B. „der Kunde ist uns wirklich wichtig“, „Ich glaube nicht, dass das an uns lag“). Unterschrift mit Funktion und fiktiver Firma.
- **Darunter** die Originalmail eines Kunden oder eines Vertreters (Kanzlei, Hausverwaltung, Einkaufsabteilung): formell, Beschwerde oder Reklamation mit konkreten Details (Zeitpunkt, Auftrag, Befürchtung, Forderung). Ca. 120–170 Wörter.
- **19** fragt nach der Haltung oder dem Anliegen des Kunden, **20** nach der Haltung der Teamleitung. Stamm ist jeweils nur der Name („19 Herr …“). Distraktoren: ein Detail falsch verknüpft (z. B. alt/neu vertauscht), eine Übertreibung („ist überzeugt, dass nichts mehr zu retten ist …“), eine Umkehr der Haltung.
- **21** Erwartung: Antwort an den Kunden (nicht an die Teamleitung!), formell, Bezug auf das Anliegen, Bedauern ohne voreiliges Schuldeingeständnis, alle Punkte der Teamleitung als Handlungen umgesetzt (z. B. Unterlagen geprüft → Ergebnis mitteilen; Termin anbieten), Schlussformel. Antwortbogen mit Feldern An / CC / Betreff.

### 41–45 Telefonische Mitteilung
- Monolog auf dem Anrufbeantworter, ca. 180–230 Wörter, gesprochene Sprache, gehoben bis emotional.
- Enthält: Begrüßung, Namen **mit Buchstabieren** („ich buchstabiere: K-E-…“), Funktion, Firma (die Firma ist auf der Notiz schon vorgedruckt), Anlass mit 4–6 Einzelheiten, ausdrückliche Erwartung (Rückruf, schriftliche Stellungnahme, Termin) mit Frist, **Telefonnummer am Ende** in Blöcken (z. B. „0123-456-78-90“, fiktiv).
- 41: Der Anrufgrund muss eindeutig sein, darf aber höflich verpackt sein (eine Beschwerde, die mit einer Buchung beginnt; ein Angebot mit kritischem Unterton).
- Telefonnotiz im Antwortbogen nachbauen: Grund (a/b/c) · Name Herr/Frau ___ · Firma (vorgedruckt) · Kontakt/Telefon · Weitere Informationen (6 Aufzählungspunkte) · Zu erledigen.

### 58 Stellungnahme
- Zwei Themen A und B, jeweils **eine geplante Maßnahme der Geschäftsführung** in 1–2 Sätzen mit genanntem Ziel („plant, ab dem nächsten Quartal … einzuführen, um … zu …“). Thema A eher arbeitsorganisatorisch/sozial, Thema B eher technisch/materiell.
- Die Maßnahme muss echte Vor- und Nachteile haben und für Beschäftigte verschiedener Branchen nachvollziehbar sein.
- Nicht wiederholen: Pflicht-Englischkurs, Bonus ohne Krankheitstage (Themen des telc-Übungstests), keine Themen aus anderen veröffentlichten Übungs- oder Modelltests sowie keine Themen aus früheren Übungen in diesem Chat.
- Antwortbogen: Schreibfeld + Spalte „Platz für Notizen“.

## Ablauf

1. **Umfang klären**, falls nicht genannt: Standard sind alle drei Schreibteile (19–21, 41–45, 58). Einzelne Teile nur auf Wunsch. Prüfung bestätigen (DTB C1).
2. **Format prüfen:** Kurz nach dem aktuellen telc-Übungstest DTB C1 suchen; bei Änderungen die Tabelle anpassen.
3. **Themen wählen:** verschiedene Branchen (Handwerk, Logistik, Pflege, IT, Hotel, Verwaltung …). Firmen und Personen fiktiv. Keine überprüfbaren Fakten oder Gesetze erfinden.
4. **Texte schreiben und Wortzahlen mit `wc -w` prüfen.**
5. **Eindeutigkeit prüfen:** 19–20 und 41 jeden Distraktor gegen den Text lesen. Für 42–45 prüfen, dass Name, Nummer und mindestens 6 notierbare Einzelheiten tatsächlich im Hörtext stehen und eine klare To-do-Handlung genannt wird.
6. **Mustertexte schreiben** (Dokument B, als „Mustertext, eine mögliche Lösung“ kennzeichnen):
   - 21: ca. 150–200 Wörter (eigene Empfehlung). Neben dem Text eine Liste der umzusetzenden Punkte der Teamleitung und wo sie im Mustertext stehen.
   - 42–45: ausgefüllte Telefonnotiz in Stichworten (Notizstil, keine ganzen Sätze).
   - 58: je Thema ca. 250–300 Wörter (eigene Empfehlung) mit Anrede an die Geschäftsführung, Einleitung, Vorteile mit Beispiel, Nachteile mit Beispiel, Standpunkt, Fazit, Gruß. Bewusst C1-Mittel: Nominalstil, Konjunktiv II, „zwar … aber“, „einerseits … andererseits“, „nicht zuletzt“, „in Anbetracht dessen“.
7. **Dokument A** (Titel z. B. „Dokument A – DTB C1 Schreiben · Übungssatz (Prüfling)“):
   - Kopf: „Deutsch-Test für den Beruf C1 – Übungssatz · Schreiben“, Name/Datum, Zeiten pro Teil (20 Min. / 5 Min. / 45 Min. inkl. Sprachbausteine bzw. eigene Empfehlung ca. 30–35 Min. für 58), Hilfsmittel: keine.
   - Abschnitte in Prüfungsreihenfolge: Lesen und Schreiben (19–21) → Hören und Schreiben (41–45) → Schreiben (58).
   - Für 41–45 kein Transkript, nur Anweisung, Aufgabe 41 und die leere Telefonnotiz.
8. **Dokument B** (Titel z. B. „Dokument B – DTB C1 Schreiben · Übungssatz (Durchführung, mit Lösungen)“):
   - **Überblick:** Tabelle Echte Prüfung vs. diese Übung, Formatquelle verlinken.
   - **Ablauf:** Zeiten, Hinweis „Hörtext einmal vorlesen“, Vorlese-Tipps (ruhig, Nummer langsam, nur einmal, lösungsrelevante Stellen nicht betonen).
   - **Hörtext 41–45** (Transkript).
   - **Lösungen 19, 20, 41** mit Textstelle und warum die Alternativen falsch sind.
   - **Erwartungshorizont + Mustertexte** für 21, 42–45, 58.
   - **Bewertungsraster:** Tabelle mit Kriterien I–IV und Punktstufen wie oben, plus kurzer Checkliste je Aufgabe (z. B. 21: richtige Adressierung, alle Punkte umgesetzt, Register; 58: Vor- und Nachteile mit Beispielen, Standpunkt, Fazit, Bezug auf das Thema).
9. **Abschluss:** Beide Links nennen, Themen in 1–2 Sätzen, anbieten, einen eingereichten Text zu korrigieren.

## Korrektur von Prüflingstexten

Schickt der Nutzer einen eigenen Text zu 21 oder 58 (Text, Foto oder Datei):
1. Aufgabe und gewähltes Thema feststellen.
2. Bewertung nach **Kriterium I** (Stufe A–D mit Punkten) und **II–IV** (je Stufe mit Punkten), jede Stufe mit 1–2 konkreten Belegen aus dem Text begründen. Deutlich als Einschätzung kennzeichnen, nicht als offizielle Bewertung.
3. Fehlerliste als Tabelle: Original · Korrektur · Regel (max. ca. 15 wichtigste Fehler, wiederkehrende Fehler zusammenfassen).
4. 3–5 Formulierungen nennen, mit denen der Text sprachlich auf C1-Niveau kommt.
5. Eine überarbeitete Fassung nur auf Wunsch, damit der Nutzer erst selbst verbessern kann.

## Formatregeln

- Optionen a/b/c als eigene Absätze mit Leerzeile dazwischen.
- Ankreuzfelder mit ☐, keine Aufgabenlisten (`- [ ]`).
- Nummerierung wie in der echten Prüfung (19–21, 41–45, 58).
- E-Mail-Köpfe (Von/An/Betreff/Gesendet) als kleine Tabelle oder eingerückter Block, damit die Weiterleitung erkennbar ist.
- Keine Texte aus veröffentlichten Übungs- oder Modelltests übernehmen.


---

# Abschnitt: c1-uebungspruefung-hoeren


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


---

# Abschnitt: c1-uebungspruefung-sprachbausteine


# C1-Übungsprüfung Sprachbausteine (DTB C1 Beruf)

Erzeugt zwei Docs-Artefakte auf Deutsch:
1. **Dokument A – Prüfling:** Kopf, Anweisungen, zwei Lückentexte, Wortkasten bzw. Optionen, Antwortbogen. Keine Lösungen.
2. **Dokument B – Durchführung:** Überblick, Lösungsschlüssel, Begründung mit Grammatik- bzw. Wortschatzregel je Lücke, Auswertung.

Gilt nur für den **Deutsch-Test für den Beruf C1 (telc/BAMF)**. Nicht für Goethe C1, telc Deutsch C1 oder telc Deutsch C1 Beruf (dort andere Sprachbausteinformate). Wenn eine dieser Prüfungen gemeint ist, kurz darauf hinweisen und nachfragen.

## Prüfungsformat (Quelle: [telc Übungstest 1 DTB C1, 2022](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf), frei als PDF verfügbar)

Teil des Subtests „Sprachbausteine und Schreiben“ (45 Min. gesamt, danach folgt Aufgabe 58). Keine eigene Zeit für die Sprachbausteine; eigene Empfehlung: ca. 10–12 Minuten.

| Teil | Aufgaben | Text | Format | Punkte |
| --- | --- | --- | --- | --- |
| 1 | 46–51 | formelle berufliche E-Mail bzw. Kurzbericht (Sie-Form) an Vorgesetzte oder Geschäftspartner, ca. 180–220 Wörter | 6 Lücken, Wortkasten a–j mit **10 Wörtern**, jedes nur einmal, **4 bleiben übrig** | je 0,5 = 3 |
| 2 | 52–57 | halbformelle bis informelle E-Mail unter Kolleg*innen (Du-Form), ca. 130–170 Wörter | 6 Lücken, je a/b/c | je 0,5 = 3 |

Die Punkte zählen zum Subtest Schreiben.

## Originalnahe Arbeitsanweisungen

- Teil 1: „Lesen Sie den folgenden Text. Welche Wörter a–j passen am besten in die Lücken 46–51? Sie können jedes Wort im Kasten nur einmal verwenden. Nicht alle Wörter passen in den Text. Markieren Sie Ihre Lösungen auf dem Antwortbogen.“
- Teil 2: „Lesen Sie den folgenden Text. Welcher Ausdruck (a, b oder c) passt am besten in die Lücken 52–57? Markieren Sie Ihre Lösungen auf dem Antwortbogen.“

## Was getestet wird

**Teil 1 – Wortschatz im Kontext, gemischte Wortarten.** Im Kasten stehen die Wörter in GROSSBUCHSTABEN und alphabetisch. Typische Lücken:
- Nomen-Verb-Verbindung / feste Wendung (z. B. „zur ___ stehen“, „zu ___ geben“, „in ___ ziehen“)
- Konnektor/Adverb mit Satzbezug (z. B. „jedoch“ vs. „nämlich“, „dennoch“, „folglich“)
- Präposition/Adverb des Ortes oder der Zeit (z. B. „außerhalb“, „innerhalb“)
- Partizip in Ellipse (z. B. „Kurz ___: …“)
- Nomen aus dem Fachwortschatz (z. B. Stellen/Positionen, Standort, Auftrag)
Distraktoren gehören teils zur gleichen Wortart wie eine Lösung (zweiter Konnektor, zweites Nomen, zweites Verb), passen aber semantisch oder grammatisch nicht (falsche Form, falsche Valenz).

**Teil 2 – Grammatik und Idiomatik, Optionen formal ähnlich.** Typische Lücken:
- Konjunktion (dass / wenn / wann; ob / falls)
- Verb + Präposition oder Reflexivität (sich kümmern um vs. sich sorgen um vs. sich bemühen um)
- Bedeutung/Negation (kaum / keinesfalls / durchaus)
- Redemittel/Formel („Wie besprochen“ vs. fehlerhafte Varianten)
- Präpositionalrektion des Nomens (Antwort **auf**, Interesse **an**, Einfluss **auf**)
- Präfixverben (absagen / zusagen / aussagen; verschieben / aufschieben)
Die zwei Distraktoren sind jeweils grammatisch falsch oder ergeben im Kontext den gegenteiligen Sinn.

## Ablauf

1. **Umfang klären**, falls nicht genannt: Standard sind beide Teile. Prüfung bestätigen (DTB C1).
2. **Format prüfen:** Kurz nach dem aktuellen telc-Übungstest DTB C1 suchen; bei Änderungen die Tabelle anpassen.
3. **Situation wählen:** Teil 1 z. B. Bericht über eine Messe, Lieferantenauswahl, Standortprüfung, Projektabschluss; Teil 2 z. B. Bitte um Vertretung, Absage, Dank, Übergabe. Keine Situationen aus dem telc-Übungstest (Arbeitsantritt, verspätete Textlieferung wegen Krankheit) oder anderen veröffentlichten Übungs- oder Modelltests und keine aus früheren Übungen in diesem Chat. Firmen und Personen fiktiv.
4. **Text schreiben**, Lücken erst danach setzen. Pro Teil die 6 Lücken über den ganzen Text verteilen, nicht in den ersten Satz und nicht in die Grußformel. Mindestens 4 verschiedene Lückentypen pro Teil.
5. **Wortzahlen mit `wc -w` prüfen.**
6. **Teil 1: Wortkasten bauen.** 6 Lösungen + 4 Distraktoren, alphabetisch sortiert, Buchstaben a–j. **Pflichtprüfung:** Jeden Distraktor in jede Lücke einsetzen. Passt er irgendwo grammatisch und inhaltlich, ersetzen. Jede Lösung darf nur in genau eine Lücke passen.
7. **Teil 2: Optionen bauen.** Pro Lücke genau eine korrekte Option; die anderen sind eindeutig falsch (nicht nur stilistisch schwächer). Kurz halten (1–3 Wörter).
8. **Lösungsbuchstaben streuen** (Teil 2: nicht zweimal derselbe hintereinander, wenn möglich).
9. **Dokument A** (Titel z. B. „Dokument A – DTB C1 Sprachbausteine · Übungssatz (Prüfling)“):
   - Kopf: „Deutsch-Test für den Beruf C1 – Übungssatz · Sprachbausteine · Teile 1–2“, Name/Datum, Zeitempfehlung als eigene Empfehlung, Hilfsmittel: keine.
   - Lücken im Text als „___ (46)“ o. Ä. deutlich markieren.
   - Teil 1: Wortkasten als Tabelle (zwei bis drei Spalten). Teil 2: Optionen nach dem Text, je Lücke ein Block.
   - Antwortbogen: Teil 1 Tabelle 46–51 × a–j mit ☐, Teil 2 Tabelle 52–57 × a/b/c, am Ende „Richtige Antworten: ___ / 12“.
10. **Dokument B** (Titel z. B. „Dokument B – DTB C1 Sprachbausteine · Übungssatz (Durchführung, mit Lösungen)“):
    - **Überblick:** Tabelle Echte Prüfung vs. diese Übung, Formatquelle verlinken.
    - **Lösungsschlüssel:** kompakte Tabelle; in Teil 1 die 4 übrig bleibenden Wörter nennen.
    - **Begründung je Lücke:** Tabelle Nr. · Lösung · Lückentyp · Regel/Begründung · Warum die anderen nicht passen (Teil 1: nahe liegende Distraktoren nennen).
    - **Auswertung:** 0,5 Punkte je Lücke (max. 6), Teil des Subtests Schreiben; Wiederholungstipps je Lückentyp.
11. **Abschluss:** Beide Links nennen, Situationen in 1–2 Sätzen, anbieten, gezielt einen Lückentyp zu üben oder mit Aufgabe 58 weiterzumachen (Skill `c1-uebungspruefung-schreiben`).

## Formatregeln

- Optionen a/b/c als eigene Absätze mit Leerzeile dazwischen.
- Ankreuzfelder mit ☐, keine Aufgabenlisten (`- [ ]`).
- Nummerierung wie in der echten Prüfung (46–51, 52–57).
- Keine Texte aus veröffentlichten Übungs- oder Modelltests übernehmen.


---

# Abschnitt: c1-uebungspruefung-sprechen


# C1-Übungsprüfung Sprechen (DTB C1 Beruf)

Erzeugt zwei Docs-Artefakte auf Deutsch:
1. **Dokument A – Aufgabenblätter für Prüflinge:** getrennte Blätter für Teilnehmer/in A und B, ohne Prüferfragen und Lösungsideen.
2. **Dokument B – Prüferunterlagen:** Ablauf mit Zeiten, Wortlaut der Anweisungen, Prüferfragen für 1B, Erwartungen und Redemittel, Bewertungsbogen.

Alternativ (auf Wunsch): **Rollenspiel im Chat**, bei dem Claude Prüfer*in und/oder Gesprächspartner*in ist und danach Rückmeldung gibt (siehe unten).

Gilt nur für den **Deutsch-Test für den Beruf C1 (telc/BAMF)**. Nicht für Goethe C1, telc Deutsch C1 oder telc Deutsch C1 Beruf. Wenn eine dieser Prüfungen gemeint ist, kurz darauf hinweisen und nachfragen.

## Prüfungsformat (Quelle: [telc Übungstest 1 DTB C1, 2022](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf), frei als PDF verfügbar)

Paarprüfung mit zwei Prüfenden (Interlokutor*in und Assessor*in), ca. 16 Minuten, **keine Vorbereitungszeit**.

| Teil | Was | Dauer | Kriterium I (A/B/C/D) |
| --- | --- | --- | --- |
| 1A Über ein Thema sprechen | Jede Person erhält 2 Themen (aus 12), wählt eines und spricht monologisch | ca. 2 Min. pro TN | 5 / 3,5 / 2 / 0 |
| 1B Prüferfragen | Prüfer*in stellt vertiefende Fragen zum Thema; die andere Person macht sich Notizen | ca. 2 Min. pro TN | 5 / 3,5 / 2 / 0 |
| 1C Erläuterung eines Aspekts | Zweite*r Prüfer*in bittet die **andere** Person, einen Aspekt aus den Antworten zu erläutern | ca. ½ Min. pro TN | 2 / 1,5 / 1 / 0 |
| 2 Mit Kolleginnen und Kollegen sprechen | Informelles Gespräch über eine Neuigkeit am Arbeitsplatz; B eröffnet mit Karte 1, danach eröffnet A mit Karte 2 | ca. 3 Min. | 8 / 6 / 3 / 0 |
| 3 Lösungswege diskutieren | Problem am Arbeitsplatz: Sofortmaßnahmen und langfristige Maßnahmen, wer übernimmt was | ca. 4 Min. | 10 / 7,5 / 4 / 0 |

**Aufgabenübergreifend:** II Aussprache und Intonation, III Formale Richtigkeit, IV Spektrum sprachlicher Mittel – je 10 / 7,5 / 4 / 0. Gesamt 60 Punkte. Bestehensregeln nur nennen, wenn sie im aktuellen telc-Übungstest nachgeprüft wurden.

## Originalnahe Arbeitsanweisungen

- 1A: „Wählen Sie ein Thema aus und sprechen Sie ca. zwei Minuten darüber. Zeigen Sie, was Sie können.“
- 1B: „Im Anschluss an Ihre Ausführungen stellt Ihnen die Prüferin bzw. der Prüfer Fragen. Während Sie sprechen, macht sich Ihre Gesprächspartnerin bzw. Ihr Gesprächspartner Notizen.“
- 1C: „Die zweite Prüferin / Der zweite Prüfer bittet Ihre Gesprächspartnerin bzw. Ihren Gesprächspartner, einen Aspekt aus Ihren Antworten zu erläutern.“ Beispiel: „TN A hat über … gesprochen. Das habe ich leider nicht ganz verstanden. Können Sie mir das noch einmal erläutern?“
- 2: Ein informelles Gespräch am Arbeitsplatz. Teilnehmer/in B erhält eine Aussage und eröffnet das Gespräch, danach erhält Teilnehmer/in A eine Aussage und beginnt.
- 3: Lösungsorientiertes Gespräch zu einem konkreten Problem am Arbeitsplatz. Auf die Vorschläge der Partnerin bzw. des Partners eingehen und konkret besprechen, was zu tun ist und wer was übernimmt. „Sprechen Sie über: • Sofortmaßnahmen • langfristige Maßnahmen“

## Stil der Aufgaben

- **1A-Themen:** offene, berufsbezogene Impulse, die zu jedem Beruf passen. Beginnen mit „Beschreiben Sie …“, „Berichten Sie über …“, „Stellen Sie … dar“ oder einer Frage, danach in Klammern „(z. B. …)“ mit 3–6 Stichpunkten. Mischung aus Erfahrung (eigene Entscheidung, Ausbildung), Fachwissen (Prozess, Dienstleistung, Produkt), Wirtschaft (Unternehmenserfolg, Kundenbindung, Werbung, soziale Medien, Selbstständigkeit) und Führung/Zusammenarbeit. Jede Person bekommt zwei Themen aus unterschiedlichen Bereichen.
- **1B-Fragen:** 4–6 vertiefende Fragen pro Thema, vom Konkreten zum Abstrakten: Nachfrage zu einem Detail, Begründung, Vergleich (z. B. mit dem Herkunftsland), Bewertung, Zukunft/Hypothese („Was würden Sie anders machen, wenn …?“).
- **Teil 2-Karten:** 1–3 Sätze in Du-Form, umgangssprachlich, als Neuigkeit oder Empörung („Hast du gehört? …“, „Das kann doch nicht wahr sein! …“, „Stell dir vor, …“). Thema ist eine Veränderung im Betrieb, zu der man eine Meinung haben kann (Regeln, Ausstattung, Arbeitszeit, Aktionen der Kollegschaft). Die zwei Karten haben unterschiedliche Themen.
- **Teil 3-Situation:** 1–2 Sätze, konkretes, physisch oder organisatorisch greifbares Problem (Raum, Ausstattung, Abläufe, Kommunikation), das sowohl schnelle als auch langfristige Lösungen zulässt.
- Nicht wiederholen: Pendeln, Poststreik, überhitzte Zimmer im Seniorenheim (Themen des telc-Übungstests), keine Themen aus anderen veröffentlichten Übungs- oder Modelltests und keine Themen aus früheren Übungen in diesem Chat. Die 12 Themen aus dem telc-Übungstest nicht wörtlich übernehmen.

## Ablauf

1. **Modus klären**, falls nicht genannt: Unterlagen für eine Paarprüfung (Standard) oder Rollenspiel im Chat. Prüfung bestätigen (DTB C1).
2. **Format prüfen:** Kurz nach dem aktuellen telc-Übungstest DTB C1 suchen; bei Änderungen die Tabelle anpassen.
3. **Aufgaben schreiben:** 4 Themen für 1A (je 2 für A und B), zu jedem Thema 4–6 Prüferfragen, 2 Karten für Teil 2, 1 Situation für Teil 3.
4. **Erwartungshorizont schreiben** (nur Dokument B):
   - 1A: möglicher Aufbau (Einleitung, 2–3 Aspekte aus den Stichpunkten, Beispiel, Abschluss) und 6–8 C1-Redemittel.
   - Teil 2: was ein gutes Gespräch zeigt (Reaktion, eigene Meinung mit Begründung, Nachfragen, Zustimmen/Widersprechen, Abschluss) plus Redemittel für informelles Sprechen.
   - Teil 3: 3–4 mögliche Sofortmaßnahmen und 3–4 langfristige Maßnahmen mit Zuständigkeiten; Redemittel für Vorschlagen, Abwägen, Einigen, Aufgaben verteilen.
5. **Dokument A** (Titel z. B. „Dokument A – DTB C1 Sprechen · Übungssatz (Aufgabenblätter)“):
   - Kopf: „Deutsch-Test für den Beruf C1 – Übungssatz · Mündliche Prüfung“, Hinweis „Paarprüfung, ca. 16 Minuten, keine Vorbereitungszeit“.
   - **Blatt Teilnehmer/in A** und **Blatt Teilnehmer/in B**, jeweils: Teil 1A (zwei Themen, Anweisung), Teil 2 (nur die eigene Karte), Teil 3 (Situation und Aufgabe, für beide gleich). Jedes Blatt mit Überschrift so gestalten, dass es einzeln ausgedruckt werden kann.
   - Keine Prüferfragen, keine Lösungsideen, keine Redemittel.
6. **Dokument B** (Titel z. B. „Dokument B – DTB C1 Sprechen · Übungssatz (Prüferunterlagen)“):
   - **Überblick:** Tabelle Echte Prüfung vs. diese Übung, Formatquelle verlinken.
   - **Ablauf mit Zeiten und Rollen:** Wer spricht wann, wann wechseln (A: 1A → 1B → B: 1C; dann B: 1A → 1B → A: 1C; Teil 2 Karte 1 B eröffnet, Karte 2 A eröffnet; Teil 3 gemeinsam). Anweisungen zum Vorlesen im Wortlaut.
   - **Prüferfragen 1B** je Thema, Beispielformulierung für 1C.
   - **Erwartungshorizont und Redemittel** für alle Teile.
   - **Bewertungsbogen:** Tabelle je Prüfling mit Kriterium I pro Teil und II–IV, Punktstufen wie oben, Spalte für Notizen; Summe ___ / 60.
7. **Abschluss:** Beide Links nennen, Themen in 1–2 Sätzen, anbieten, die Prüfung als Rollenspiel im Chat durchzuspielen.

## Rollenspiel im Chat

- Vorher fragen, ob der Nutzer A, B oder beide Rollen spricht; Claude übernimmt die übrigen Rollen (Prüfer*in, Partner*in).
- Teil für Teil vorgehen, Aufgabe vorlegen, auf die Antwort warten. Als Partner*in kurz, natürlich und auf C1-Niveau reagieren, nicht dominieren, Raum zum Sprechen lassen.
- Bei Spracheingabe kann die Aussprache (Kriterium II) nicht beurteilt werden; das offen sagen.
- Am Ende Rückmeldung: Kriterium I pro Teil und III–IV mit Stufe und Belegen aus den Antworten, als Einschätzung gekennzeichnet; 5–8 Korrekturen (Original · Korrektur · Regel); 3–5 Redemittel zum Weiterüben.

## Formatregeln

- Aufzählungen für Stichpunkte und Maßnahmen, Tabellen für Ablauf und Bewertung.
- Keine Aufgabenlisten (`- [ ]`); Ankreuz- oder Punktefelder mit ☐ bzw. „___“.
- Teil 2-Karten als hervorgehobener Block (Zitat oder eigene Tabelle), damit sie ausgeschnitten werden können.
- Keine Texte aus veröffentlichten Übungs- oder Modelltests übernehmen.
