set -euo pipefail

FILE="${FILE:-data.txt}"
GITHUB_USER="${GITHUB_USER:-unknown}"

echo "[entrypoint] analyzing file: ${FILE}"
FREQ_RESULT="$(python3 .github/scripts/frequency.py "${FILE}")"
echo "[entrypoint] result: ${FREQ_RESULT}"

.github/scripts/update_readme.sh "${FREQ_RESULT}" "${GITHUB_USER}"

echo "[entrypoint] done."
