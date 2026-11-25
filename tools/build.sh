#!/usr/bin/env bash
# Builds the files in downloads/ from skills/.
#   downloads/claude/<skill>.zip       one ZIP per skill, the skill folder inside (Claude upload)
#   downloads/dtb-c1-komplett.md       all six skills in one file (ChatGPT project file)
#   downloads/gemini/dtb-c1-komplett.zip  the same text as SKILL.md at the ZIP root (Gemini upload)
# Run from anywhere: tools/build.sh
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf downloads && mkdir -p downloads/claude downloads/gemini

order=(c1-probepruefung-gesamt c1-uebungspruefung-lesen c1-uebungspruefung-schreiben
       c1-uebungspruefung-hoeren c1-uebungspruefung-sprachbausteine c1-uebungspruefung-sprechen)

for s in "${order[@]}"; do
  (cd skills && TZ=UTC touch -t 202601010000 "$s" "$s/SKILL.md" && zip -qX -r "../downloads/claude/$s.zip" "$s")
done

out=downloads/dtb-c1-komplett.md
{
  cat tools/komplett-header.md
  for s in "${order[@]}"; do
    printf '\n\n---\n\n# Abschnitt: %s\n\n' "$s"
    # Drop the per-skill front matter; the header above has the only one.
    awk 'NR==1 && /^---$/ {fm=1; next} fm && /^---$/ {fm=0; next} !fm' "skills/$s/SKILL.md"
  done
} > "$out"

tmp=$(mktemp -d)
cp "$out" "$tmp/SKILL.md"
TZ=UTC touch -t 202601010000 "$tmp/SKILL.md"
(cd "$tmp" && zip -qX ../dtb-c1-komplett.zip SKILL.md && mv ../dtb-c1-komplett.zip "$OLDPWD/downloads/gemini/")
rm -rf "$tmp"
echo "built: $(find downloads -type f | sort | tr '\n' ' ')"
