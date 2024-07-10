import os

# Get folders in a directory
def get_folders(path):
    return [f for f in os.listdir(path) if os.path.isdir(os.path.join(path, f))]

# Get files in a directory
def get_files(path):
    return [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]

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

# Traverse the directory structure recursively
def traverse_directory(path):
    folders = get_folders(path)
    for folder in folders:
        folder_path = os.path.join(path, folder)
        files = get_files(folder_path)
        for file in files:
            file_path = os.path.join(folder_path, file)
            check_author_line(file_path)
        traverse_directory(folder_path)

# Main function for the author checker
def author_checker_main():
    ps_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../Part 1 (Dart)/Dart Basics/Problem-Solving"))
    traverse_directory(ps_path)

    tasks_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../Part 1 (Dart)/Dart Basics/Tasks"))
    traverse_directory(tasks_path)

    oop_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../Part 1 (Dart)/OOP"))
    traverse_directory(oop_path)

    print("All files are valid")

if __name__ == "__main__":
    author_checker_main()
