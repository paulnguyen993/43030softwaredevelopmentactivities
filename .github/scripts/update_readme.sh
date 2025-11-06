set -euo pipefail

FREQ_RESULT="${1:-}"
GITHUB_USER="${2:-unknown}"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

[[ -f README.md ]] || echo "# Vowel Frequency Analyzer" > README.md

{
  echo ""
  echo "### Update by ${GITHUB_USER} on ${TIMESTAMP}"
  echo ""
  echo "\`${FREQ_RESULT}\`"
} >> README.md
