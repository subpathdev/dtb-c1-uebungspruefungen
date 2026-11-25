# Guide: create DTB C1 practice exams with AI

This guide shows, step by step, how to use an AI to create your own practice exams for the **Deutsch-Test für den Beruf C1 (DTB C1)**, the German C1 exam for work. You don't need technical skills. The practice exams themselves are in German.

There are three ways. Pick the AI you already use:

- [Claude](#claude) (claude.ai)
- [ChatGPT](#chatgpt)
- [Gemini](#gemini)

Then see the [FAQ](#faq).

> Last checked: November 2026. AI menus change often. If a button has a different name, look for a similar word.

---

## What you need

1. An account with Claude, ChatGPT or Gemini.
2. A computer with a web browser. Phones work for most things, but uploading files is easier on a computer.
3. The files from this project. They are in the [`downloads`](../downloads) folder.

### How to download a file from GitHub

1. In the `downloads` folder, click the file you need.
2. Click **Download raw file** (the down arrow, top right).
3. The file is now in your "Downloads" folder.

> 📷 *Screenshot placeholder: download button on GitHub.*

---

## Claude

In Claude, the instructions are called **skills**. You upload each skill once. After that, Claude uses it when it fits.

**Which plan?** According to Claude's help center, skills are available on Free, Pro, Max, Ultra, Team and Enterprise. "Code execution" must be turned on. ([Source: Claude help](https://support.claude.com/en/articles/12512180-using-skills-in-claude))

### Step 1: Turn on code execution

1. Open [claude.ai](https://claude.ai) and sign in.
2. Open **Settings**.
3. Go to **Capabilities**.
4. Turn on **Code execution and file creation**. Newer versions call it **Create and edit files**.

> 📷 *Screenshot placeholder: code execution switch.*

### Step 2: Download the skills

1. Open the [`downloads/claude`](../downloads/claude) folder.
2. Download the ZIP files you want. **Don't unzip them.** Claude needs them as they are.

| File | For |
| --- | --- |
| `c1-uebungspruefung-lesen.zip` | Reading (tasks 1–18) |
| `c1-uebungspruefung-schreiben.zip` | Writing (19–21, 41–45, 58) and feedback on your own texts |
| `c1-uebungspruefung-hoeren.zip` | Listening (22–40) |
| `c1-uebungspruefung-sprachbausteine.zip` | Language elements / gap texts (46–57) |
| `c1-uebungspruefung-sprechen.zip` | Oral exam |
| `c1-probepruefung-gesamt.zip` | Full mock exam. **Needs all five other skills.** |

### Step 3: Upload the skills

Repeat for each ZIP file:

1. Go to [claude.ai/customize/skills](https://claude.ai/customize/skills) (menu: **Customize → Skills**).
2. Click **+**, then **+ Create skill**.
3. Choose **Upload a skill**.
4. Select the ZIP file.
5. Check that the switch next to the new skill is **on**.

> 📷 *Screenshot placeholder: "Upload a skill".*

### Step 4: Start a practice exam

1. Open a **new chat**.
2. Write what you want, in German or English. For example:
   - "Erstelle mir eine Übungsprüfung Lesen für den DTB C1."
   - "Create a DTB C1 listening exercise, part 1."
   - "Erstelle eine ganze Probeprüfung DTB C1."
3. If Claude doesn't use the skill, name it: "Use the skill c1-uebungspruefung-lesen."

---

## ChatGPT

In ChatGPT you use a **project**. A project is a folder with its own instructions and files.

**Why not a "Custom GPT"?** According to OpenAI's help center, personal accounts (Free, Go, Plus, Pro) can no longer create new GPTs, and custom GPTs are being retired. ([Source: OpenAI help](https://help.openai.com/en/articles/8554397-creating-a-gpt))

**Which plan?** Projects are available on the free plan too. Free allows 5 files per project; we need only one. ([Source: OpenAI help](https://help.openai.com/en/articles/10169521-projects-in-chatgpt))

### Step 1: Download the file

1. Download [`downloads/dtb-c1-komplett.md`](../downloads/dtb-c1-komplett.md).
2. This one file contains all six instructions.

### Step 2: Create a project

1. Open [chatgpt.com](https://chatgpt.com) and sign in.
2. In the sidebar, click **New project**.
3. Enter a name, for example "DTB C1 Training".

> 📷 *Screenshot placeholder: "New project".*

### Step 3: Add the file

1. Open the project.
2. Add `dtb-c1-komplett.md` as a project file (upload files).

### Step 4: Add instructions

1. In the project, click **•••** (three dots), then **Project settings**.
2. Copy this text into the instructions field:

```text
Du hilfst bei der Vorbereitung auf den Deutsch-Test für den Beruf C1 (DTB C1).
Lies vor jeder Antwort die Projektdatei dtb-c1-komplett.md und befolge sie genau.
Erstelle Prüflingsblatt und Lösungen immer getrennt. Antworte auf Deutsch.
```

3. Save.

### Step 5: Start a practice exam

1. Start a **new chat inside the project**.
2. Write, for example: "Erstelle mir eine Übungsprüfung Lesen für den DTB C1."

---

## Gemini

In Gemini, the instructions are also called **skills**.

**Why not a "Gem"?** According to Google's help center, Gems on personal accounts are turning into skills from November 2026. Since 17 November 2026 you can't create new Gems. ([Source: Google help](https://support.google.com/gemini/answer/18560919?hl=en))

**What do you need?** According to Google's help center: be 18 or older and signed in to Gemini. Uploading works in the Gemini web app and the Gemini app for Mac. ([Source: Google help](https://support.google.com/gemini/answer/17094296?hl=en)) We have not checked whether a paid subscription is needed.

### Step 1: Download the file

1. Download [`downloads/gemini/dtb-c1-komplett.zip`](../downloads/gemini).
2. **Don't unzip it.**

### Step 2: Upload the skill

1. Open [gemini.google.com](https://gemini.google.com) and sign in.
2. In the sidebar, click **Customize**.
3. At the top, click **Skills**.
4. Click **Create**, then **Upload**.
5. Select `dtb-c1-komplett.zip`.

> 📷 *Screenshot placeholder: Gemini skills page.*

### Step 3: Start a practice exam

1. Open a new chat.
2. Type **/** and choose the skill **dtb-c1-komplett**.
3. Add what you want, for example: "Übungsprüfung Hören, Teil 1."

---

## FAQ

### What does each part create?

| Part | You get |
| --- | --- |
| Reading | Candidate sheet with texts, tasks 1–18 and answer sheet, plus a solutions sheet with explanations. |
| Writing | Tasks 19–21 (e-mail), 41–45 (phone note) and 58 (statement), plus solutions, model texts and a marking grid. The AI can also give feedback on your own text. |
| Listening | Task sheet and answer sheet, plus an examiner sheet with the script to read aloud and the solutions. Default is part 1 (tasks 22–27); other parts on request. |
| Language elements | Two gap texts (tasks 46–57) with answer sheet, plus solutions with grammar rules. |
| Speaking | Task sheets for two candidates (A and B) and examiner notes. Or a role play right in the chat, with feedback. |
| Full mock exam | All of it: test booklet (tasks 1–58), speaking task sheets, listening scripts and a solutions and marking booklet. |

### Is there audio for the listening part?

No. The AI writes the script. A second person reads it aloud. The examiner sheet explains how. You can read it to yourself, but then you already know the text.

### How long does a session take?

Creating an exercise usually takes a few minutes; a full mock exam takes much longer. (This is our experience, not a fixed figure.)

Working times match the real exam (according to the telc practice test):

| Part | Time |
| --- | --- |
| Reading | 45 minutes |
| Reading and writing | 20 minutes |
| Listening | 20 minutes |
| Listening and writing | 5 minutes |
| Language elements and writing | 45 minutes |
| Speaking (in pairs) | about 16 minutes |

### How do I get the solutions?

The AI always creates **two separate documents**: one for the candidate (no solutions) and one with solutions.

1. Open only the candidate sheet.
2. Do the tasks.
3. Then open the solutions sheet.

Even better: someone else opens the solutions sheet and reads you the listening script. If the solutions are missing, write: "Zeig mir jetzt das Lösungsblatt."

### Is this a real exam?

No. The tasks are newly written by the AI. They follow the format of the official [telc DTB C1 practice test](https://shop.telc.net/media/catalog/product/file//1/0/1011430_22020524_5016-b00-010102_web.pdf). Scores are an estimate, not an official result. The AI can make mistakes. If a task has two correct answers, tell the AI; it will fix the solutions sheet.

### Does it work for other exams?

No. Only for the **Deutsch-Test für den Beruf C1**. Not for Goethe C1, telc Deutsch C1 or telc Deutsch C1 Beruf.
