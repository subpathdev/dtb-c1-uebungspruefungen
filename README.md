# DTB-C1-Übungsprüfungen mit KI

Anleitungen („Skills“) für KI-Assistenten, die eigene Übungsprüfungen für den **Deutsch-Test für den Beruf C1 (DTB C1)** erstellen: Lesen, Schreiben, Hören, Sprachbausteine, Sprechen oder eine ganze Probeprüfung – immer mit getrenntem Lösungsblatt.

Funktioniert mit **Claude**, **ChatGPT** und **Gemini**.

👉 **[Anleitung auf Deutsch](docs/anleitung.md)** · **[Guide in English](docs/guide-en.md)**

## English summary

Skills for AI assistants that generate practice exams for the German *Deutsch-Test für den Beruf C1* (DTB C1, German for work at C1 level): reading, writing, listening, language elements, speaking, or a full mock exam, each with a separate solutions sheet. All tasks are written fresh by the AI in the format of the free official telc practice test. Works with Claude (skills), ChatGPT (projects) and Gemini (skills). See the [English guide](docs/guide-en.md).

## Inhalt

| Ordner / Datei | Inhalt |
| --- | --- |
| [`skills/`](skills) | Die sechs Skills, je ein Ordner mit `SKILL.md` |
| [`downloads/claude/`](downloads/claude) | Je eine ZIP-Datei pro Skill zum Hochladen in Claude |
| [`downloads/dtb-c1-komplett.md`](downloads/dtb-c1-komplett.md) | Alle sechs Skills in einer Datei (für ChatGPT) |
| [`downloads/gemini/`](downloads/gemini) | Dieselbe Datei als ZIP zum Hochladen in Gemini |
| [`docs/`](docs) | Anleitungen für Nutzerinnen und Nutzer (DE, EN) |
| [`tools/build.sh`](tools/build.sh) | Baut `downloads/` aus `skills/` neu |

### Die Skills

| Skill | Prüfungsteil | Aufgaben |
| --- | --- | --- |
| `c1-uebungspruefung-lesen` | Lesen | 1–18 |
| `c1-uebungspruefung-schreiben` | Lesen und Schreiben, Hören und Schreiben, Schreiben | 19–21, 41–45, 58 |
| `c1-uebungspruefung-hoeren` | Hören | 22–40 |
| `c1-uebungspruefung-sprachbausteine` | Sprachbausteine | 46–57 |
| `c1-uebungspruefung-sprechen` | Mündliche Prüfung | Teile 1A–3 |
| `c1-probepruefung-gesamt` | Ganze Probeprüfung (nutzt die fünf anderen) | 1–58 + mündlich |

## Quellen

Das Prüfungsformat (Aufbau, Zeiten, Punkte, Arbeitsanweisungen) stammt aus dem frei verfügbaren [telc Übungstest 1, Deutsch-Test für den Beruf C1 (2022)](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf). Alle Beispielsätze in den Skills sind eigene Formulierungen. Es werden keine Texte aus Übungs- oder Modelltests übernommen.

Dieses Projekt steht in keiner Verbindung zu telc gGmbH oder dem BAMF. „telc“ und „Deutsch-Test für den Beruf“ werden nur genannt, um die Prüfung zu bezeichnen.

## Für Mitwirkende

- `SKILL.md` in `skills/` bearbeiten, dann `tools/build.sh` ausführen und `downloads/` mit committen.
- Änderungen in [`CHANGELOG.md`](CHANGELOG.md) eintragen.

## Lizenz

[CC BY 4.0](LICENSE) – Sie dürfen die Inhalte teilen und bearbeiten, auch kommerziell, wenn Sie die Quelle nennen.
