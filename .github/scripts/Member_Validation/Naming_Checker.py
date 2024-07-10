import json
import os
import re
import subprocess

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

# Get the list of modified files from the latest commit
def get_modified_files():
    result = subprocess.run(['git', 'diff', '--name-only', 'HEAD~1'], stdout=subprocess.PIPE)
    modified_files = result.stdout.decode('utf-8').split()
    return [file for file in modified_files if os.path.isfile(file)]

# Check if file names match the required pattern
def check_file(file_path):
    if file_path.endswith(".gitkeep") or file_path.endswith(".md"):
        return
    file_name = os.path.basename(file_path)
    if not re.match(r"^\d{2}- .+\([A-Za-z0-9 -_]+\)\.\b(cpp|rb|py|js|ts|c|java|php|dart|cs|exs)\b$", file_name):
        print(f"File {file_name} name is not valid")
        exit(1)

# Main function for the naming checker
def naming_checker_main():
    global problems
    problems = read_data()

    modified_files = get_modified_files()
    for file in modified_files:
        check_file(file)

    print("All modified files are valid")

if __name__ == "__main__":
    naming_checker_main()
