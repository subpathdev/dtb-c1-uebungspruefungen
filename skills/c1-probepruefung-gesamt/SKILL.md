---
name: "c1-probepruefung-gesamt"
description: "Erstellt eine vollständige Probeprüfung für den Deutsch-Test für den Beruf C1 (DTB C1) aus den fünf Teil-Skills: Aufgaben 1–58 plus mündliche Prüfung, mit Testheft, Hörtexten, Lösungen."
---

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