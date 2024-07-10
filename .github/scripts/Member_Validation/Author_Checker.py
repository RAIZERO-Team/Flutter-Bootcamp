import os
import subprocess

# Get the list of modified files from the latest commit
def get_modified_files():
    result = subprocess.run(['git', 'diff', '--name-only', 'HEAD~1'], stdout=subprocess.PIPE)
    modified_files = result.stdout.decode('utf-8').split()
    return [file for file in modified_files if os.path.isfile(file)]

# Check if the author line is present in the file
def check_author_line(file_path):
    if file_path.endswith(".gitkeep") or file_path.endswith(".md"):
        return

    with open(file_path, "r") as f:
        lines = f.readlines()
        for line in lines:
            words = line.lower().split(" ")
            for word in words:
                if "author:" in word or ("author" in word and ":" in words and "author:" not in words):
                    return
    print(f"Author line is not in {file_path} file")
    exit(1)

# Main function for the author checker
def author_checker_main():
    modified_files = get_modified_files()
    for file in modified_files:
        check_author_line(file)

    print("All modified files have valid author lines")

if __name__ == "__main__":
    author_checker_main()
