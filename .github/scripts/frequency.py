import sys
from collections import Counter

VOWELS = set("aeiou")

def count_vowels(path: str):
    try:
        with open(path, "r", encoding="utf-8") as f:
            text = f.read().lower()
    except FileNotFoundError:
        print(f"ERROR: file not found: {path}", file=sys.stderr)
        sys.exit(1)
    c = Counter(ch for ch in text if ch in VOWELS)
    # keep fixed order a,e,i,o,u
    ordered = {v: c.get(v, 0) for v in ["a","e","i","o","u"]}
    return ordered

def main():
    if len(sys.argv) != 2:
        print("Usage: frequency.py <file>", file=sys.stderr)
        sys.exit(2)
    result = count_vowels(sys.argv[1])
    print(" ".join(f"{k}:{v}" for k,v in result.items()))

if __name__ == "__main__":
    main()
