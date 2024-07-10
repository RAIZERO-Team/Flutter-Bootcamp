import json
import os
import re

# Global variable to store problem data
problems = {}

# Read problem data from the JSON file
def read_data():
    with open(".github/data/Tasks.json", "r") as file:
        data = json.load(file)
    return data

# Check for duplicates in a list
def check_duplicate(items):
    items.sort()
    for i in range(len(items) - 1):
        if items[i] == items[i + 1]:
            print(f"There is a Duplicate with {items[i]}")
            exit(1)

# Get folders in a directory
def get_folders(path):
    return [f for f in os.listdir(path) if os.path.isdir(os.path.join(path, f))]

# Get files in a directory
def get_files(path):
    return [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]

# Check if file names match the required pattern
def check_files(folder_path):
    files = get_files(folder_path)
    for file in files:
        if file == ".gitkeep" or file.endswith(".md"):
            continue
        if not re.match(r"^\d{2}- .+\([A-Za-z0-9 -_]+\)\.\b(cpp|rb|py|js|ts|c|java|php|dart|cs|exs)\b$", file):
            print(f"File {file} name is not valid")
            exit(1)
    check_duplicate(files)

# Traverse the directory structure recursively
def traverse_directory(path):
    folders = get_folders(path)
    for folder in folders:
        folder_path = os.path.join(path, folder)
        check_files(folder_path)
        traverse_directory(folder_path)

# Main function for the naming checker
def naming_checker_main():
    global problems
    problems = read_data()

    # Start checking from the 'Part 1' directory
    ps_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../Part 1 (Dart)/Dart Basics/Problem-Solving"))
    traverse_directory(ps_path)

    tasks_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../Part 1 (Dart)/Dart Basics/Tasks"))
    traverse_directory(tasks_path)

    oop_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../../Part 1 (Dart)/OOP"))
    traverse_directory(oop_path)

    print("All files are valid")

if __name__ == "__main__":
    naming_checker_main()
