# Anleitung: DTB-C1-Übungsprüfungen mit KI erstellen

Diese Anleitung zeigt Schritt für Schritt, wie Sie mit einer KI eigene Übungsprüfungen für den **Deutsch-Test für den Beruf C1 (DTB C1)** erstellen. Sie brauchen keine Technik-Kenntnisse.

Es gibt drei Wege. Wählen Sie die KI, die Sie schon benutzen:

- [Claude](#claude) (claude.ai)
- [ChatGPT](#chatgpt)
- [Gemini](#gemini)

Danach kommen [Häufige Fragen](#häufige-fragen).

> Stand der Anleitung: November 2026. Die Menüs der KI-Anbieter ändern sich oft. Wenn ein Knopf anders heißt, suchen Sie nach einem ähnlichen Wort.

---

## Was Sie vorher brauchen

1. Ein Konto bei Claude, ChatGPT oder Gemini.
2. Einen Computer mit Browser. Am Handy geht vieles auch, aber das Hochladen von Dateien ist am Computer einfacher.
3. Die Dateien aus diesem Projekt. Sie liegen im Ordner [`downloads`](../downloads).

### So laden Sie eine Datei von GitHub herunter

1. Klicken Sie im Ordner `downloads` auf die Datei, die Sie brauchen.
2. Klicken Sie rechts oben auf den Knopf **Download raw file** (Pfeil nach unten).
3. Die Datei liegt jetzt in Ihrem Ordner „Downloads“.

> 📷 *Platz für ein Bildschirmfoto: Download-Knopf auf GitHub.*

---

## Claude

Bei Claude heißen die Anleitungen **Skills**. Sie laden jeden Skill einmal hoch. Danach erkennt Claude von selbst, wann er gebraucht wird.

**Welcher Tarif?** Skills gibt es laut Claude-Hilfe in den Tarifen Free, Pro, Max, Ultra, Team und Enterprise. Die Funktion „Code-Ausführung“ muss eingeschaltet sein. ([Quelle: Claude-Hilfe](https://support.claude.com/en/articles/12512180-using-skills-in-claude))

### Schritt 1: Code-Ausführung einschalten

1. Öffnen Sie [claude.ai](https://claude.ai) und melden Sie sich an.
2. Öffnen Sie die **Einstellungen** (Settings).
3. Gehen Sie zu **Capabilities** (Funktionen).
4. Schalten Sie **Code execution and file creation** ein. In neueren Versionen heißt es **Create and edit files**.

> 📷 *Platz für ein Bildschirmfoto: Schalter für Code-Ausführung.*

### Schritt 2: Skills herunterladen

1. Öffnen Sie den Ordner [`downloads/claude`](../downloads/claude).
2. Laden Sie die ZIP-Dateien herunter, die Sie möchten. **Öffnen Sie die ZIP-Dateien nicht.** Claude braucht sie so, wie sie sind.

| Datei | Wofür |
| --- | --- |
| `c1-uebungspruefung-lesen.zip` | Lesen (Aufgaben 1–18) |
| `c1-uebungspruefung-schreiben.zip` | Schreiben (19–21, 41–45, 58) und Korrektur eigener Texte |
| `c1-uebungspruefung-hoeren.zip` | Hören (22–40) |
| `c1-uebungspruefung-sprachbausteine.zip` | Sprachbausteine (46–57) |
| `c1-uebungspruefung-sprechen.zip` | Mündliche Prüfung |
| `c1-probepruefung-gesamt.zip` | Ganze Probeprüfung. **Braucht alle fünf anderen Skills.** |

### Schritt 3: Skills hochladen

Wiederholen Sie diese Schritte für jede ZIP-Datei:

1. Gehen Sie auf [claude.ai/customize/skills](https://claude.ai/customize/skills). Im Menü heißt das **Customize → Skills**.
2. Klicken Sie auf **+** und dann auf **+ Create skill**.
3. Wählen Sie **Upload a skill**.
4. Wählen Sie die ZIP-Datei aus.
5. Prüfen Sie, dass der Schalter neben dem neuen Skill **an** ist.

> 📷 *Platz für ein Bildschirmfoto: „Upload a skill“.*

### Schritt 4: Übung starten

1. Öffnen Sie einen **neuen Chat**.
2. Schreiben Sie, was Sie möchten. Zum Beispiel:
   - „Erstelle mir eine Übungsprüfung Lesen für den DTB C1.“
   - „Mach eine Hörübung DTB C1, Teil 1.“
   - „Erstelle eine ganze Probeprüfung DTB C1.“
   - „Korrigiere meinen Text zu Aufgabe 58.“ (Text danach einfügen)
3. Falls Claude den Skill nicht benutzt, schreiben Sie den Namen dazu: „Benutze den Skill c1-uebungspruefung-lesen.“

---

## ChatGPT

Bei ChatGPT nutzen Sie ein **Projekt**. Ein Projekt ist ein Ordner mit eigenen Anweisungen und Dateien.

**Warum kein „Custom GPT“?** Laut OpenAI-Hilfe können private Konten (Free, Go, Plus, Pro) keine neuen GPTs mehr erstellen, und Custom GPTs werden abgeschaltet. ([Quelle: OpenAI-Hilfe](https://help.openai.com/en/articles/8554397-creating-a-gpt))

**Welcher Tarif?** Projekte gibt es auch im kostenlosen Tarif. Free erlaubt 5 Dateien pro Projekt. Wir brauchen nur eine. ([Quelle: OpenAI-Hilfe](https://help.openai.com/en/articles/10169521-projects-in-chatgpt))

### Schritt 1: Datei herunterladen

1. Laden Sie die Datei [`downloads/dtb-c1-komplett.md`](../downloads/dtb-c1-komplett.md) herunter.
2. Diese eine Datei enthält alle sechs Anleitungen.

### Schritt 2: Projekt anlegen

1. Öffnen Sie [chatgpt.com](https://chatgpt.com) und melden Sie sich an.
2. Klicken Sie links in der Seitenleiste auf **New project** (Neues Projekt).
3. Geben Sie einen Namen ein, zum Beispiel „DTB C1 Training“.

> 📷 *Platz für ein Bildschirmfoto: „New project“.*

### Schritt 3: Datei hinzufügen

1. Öffnen Sie das Projekt.
2. Fügen Sie die Datei `dtb-c1-komplett.md` als Projektdatei hinzu (Dateien hochladen).

### Schritt 4: Anweisungen einfügen

1. Klicken Sie im Projekt auf **•••** (drei Punkte) und dann auf **Project settings** (Projekteinstellungen).
2. Kopieren Sie diesen Text in das Feld für die Anweisungen:

```text
Du hilfst bei der Vorbereitung auf den Deutsch-Test für den Beruf C1 (DTB C1).
Lies vor jeder Antwort die Projektdatei dtb-c1-komplett.md und befolge sie genau.
Erstelle Prüflingsblatt und Lösungen immer getrennt. Antworte auf Deutsch.
```

3. Speichern Sie.

### Schritt 5: Übung starten

1. Starten Sie einen **neuen Chat im Projekt**.
2. Schreiben Sie zum Beispiel: „Erstelle mir eine Übungsprüfung Lesen für den DTB C1.“

---

## Gemini

Bei Gemini heißen die Anleitungen ebenfalls **Skills**.

**Warum kein „Gem“?** Laut Google-Hilfe werden Gems bei privaten Konten seit November 2026 zu Skills. Ab dem 17. November 2026 kann man keine neuen Gems mehr erstellen. ([Quelle: Google-Hilfe](https://support.google.com/gemini/answer/18560919?hl=en))

**Was brauchen Sie?** Laut Google-Hilfe: mindestens 18 Jahre alt und bei Gemini angemeldet. Hochladen geht in der Gemini-Web-App und in der Gemini-App für Mac. ([Quelle: Google-Hilfe](https://support.google.com/gemini/answer/17094296?hl=en)) Ob dafür ein bezahltes Abo nötig ist, haben wir nicht geprüft.

### Schritt 1: Datei herunterladen

1. Laden Sie die Datei [`downloads/gemini/dtb-c1-komplett.zip`](../downloads/gemini) herunter.
2. **Öffnen Sie die ZIP-Datei nicht.**

### Schritt 2: Skill hochladen

1. Öffnen Sie [gemini.google.com](https://gemini.google.com) und melden Sie sich an.
2. Klicken Sie in der Seitenleiste auf **Customize** (Anpassen).
3. Klicken Sie oben auf **Skills**.
4. Klicken Sie auf **Create** (Erstellen) und dann auf **Upload** (Hochladen).
5. Wählen Sie die Datei `dtb-c1-komplett.zip` aus.

> 📷 *Platz für ein Bildschirmfoto: Skills-Seite in Gemini.*

### Schritt 3: Übung starten

1. Öffnen Sie einen neuen Chat.
2. Tippen Sie **/** und wählen Sie den Skill **dtb-c1-komplett**.
3. Schreiben Sie dazu, was Sie möchten, zum Beispiel: „Übungsprüfung Hören, Teil 1.“

---

## Häufige Fragen

### Was erstellt welcher Teil?

| Teil | Sie bekommen |
| --- | --- |
| Lesen | Prüflingsblatt mit Texten, Aufgaben 1–18 und Antwortbogen. Dazu ein Lösungsblatt mit Begründungen. |
| Schreiben | Aufgaben 19–21 (E-Mail), 41–45 (Telefonnotiz) und 58 (Stellungnahme). Dazu Lösungen, Mustertexte und ein Bewertungsraster. Die KI kann auch Ihren eigenen Text korrigieren. |
| Hören | Aufgabenblatt und Antwortbogen. Dazu ein Prüferblatt mit Hörtext zum Vorlesen und Lösungen. Standard ist Teil 1 (Aufgaben 22–27); andere Teile auf Wunsch. |
| Sprachbausteine | Zwei Lückentexte (Aufgaben 46–57) mit Antwortbogen. Dazu Lösungen mit Grammatik-Regeln. |
| Sprechen | Aufgabenblätter für zwei Prüflinge (A und B) und Unterlagen für Prüfende. Oder ein Rollenspiel direkt im Chat mit Rückmeldung. |
| Ganze Probeprüfung | Alles zusammen: Testheft (Aufgaben 1–58), Aufgabenblätter Sprechen, Hörtexte zum Vorlesen und ein Lösungs- und Bewertungsheft. |

### Gibt es eine Tonaufnahme für das Hören?

Nein. Die KI schreibt den Hörtext. Eine zweite Person liest ihn laut vor. Im Prüferblatt steht, wie man vorliest. Sie können sich auch selbst vorlesen, aber dann kennen Sie den Text schon.

### Wie lange dauert eine Übung?

Das Erstellen dauert meist ein paar Minuten, die ganze Probeprüfung deutlich länger. (Das ist unsere Erfahrung, keine feste Angabe.)

Die Bearbeitungszeiten entsprechen der echten Prüfung (laut telc-Übungstest):

| Teil | Zeit |
| --- | --- |
| Lesen | 45 Minuten |
| Lesen und Schreiben | 20 Minuten |
| Hören | 20 Minuten |
| Hören und Schreiben | 5 Minuten |
| Sprachbausteine und Schreiben | 45 Minuten |
| Sprechen (zu zweit) | ca. 16 Minuten |

### Wie bekomme ich die Lösungen?

Die KI erstellt immer **zwei getrennte Dokumente**: eines für den Prüfling (ohne Lösungen) und eines mit Lösungen.

1. Öffnen Sie nur das Prüflingsblatt.
2. Bearbeiten Sie die Aufgaben.
3. Öffnen Sie danach das Lösungsblatt.

Noch besser: Eine andere Person öffnet das Lösungsblatt und liest Ihnen beim Hören den Text vor. Falls die Lösungen fehlen, schreiben Sie: „Zeig mir jetzt das Lösungsblatt.“

### Ist die Übung eine echte Prüfung?

Nein. Die Aufgaben sind neu von der KI geschrieben. Sie folgen dem Format des offiziellen [telc-Übungstests DTB C1](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf). Die Punkte sind eine Einschätzung, keine offizielle Bewertung. Die KI kann Fehler machen. Wenn eine Aufgabe zwei richtige Antworten hat, sagen Sie es der KI. Sie korrigiert dann das Lösungsblatt.

### Funktioniert das auch für andere Prüfungen?

Nein. Nur für den **Deutsch-Test für den Beruf C1**. Nicht für Goethe C1, telc Deutsch C1 oder telc Deutsch C1 Beruf.
