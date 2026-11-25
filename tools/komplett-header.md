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
