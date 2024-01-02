import re
import os

def regEx_files(pattern, path):
    matches = []

    for root, dirs, file_names in os.walk(path):
        for file_name in file_names:
            try:
                with open(os.path.join(root, file_name), 'r') as f:
                    for line in f:
                        if re.search(pattern, line):
                            matches.append(f"File: {os.path.join(root, file_name)}\nLine: {line.strip()}")
            except Exception as e:
                print(f"Error reading file {os.path.join(root, file_name)}: {str(e)}")
                continue

    if not matches:
        print("No matches found.")
    else:
        for match in matches:
            print(match)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python regEx_in_files.py <pattern> <path>")
        sys.exit(1)

    pattern = sys.argv[1]
    path = sys.argv[2]

    regEx_files(pattern, path)
