---
name: "c1-uebungspruefung-sprachbausteine"
description: "Erstellt einen Übungssatz Sprachbausteine (Aufgaben 46–57) für den Deutsch-Test für den Beruf C1 (DTB C1): Dokument A für Prüflinge, Dokument B mit Lösungen und Regeln."
---

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