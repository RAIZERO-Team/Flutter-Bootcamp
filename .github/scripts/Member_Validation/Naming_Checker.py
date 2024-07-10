import json
import os
import re

problems = {}

def read_data():
    with open(".github/data/problems.json", "r") as file:
        data = json.load(file)
    return data

def check_duplicate(items):
    items.sort()
    for i in range(len(items) - 1):
        if items[i] == items[i + 1]:
            print(f"There is a Duplicate with {items[i]}")
            exit(1)

def change_directory(dir=None, phase=None, week=None, daily=None):
    if daily is not None and week is not None and phase is not None and dir is not None:
        os.chdir(f"{dir}/{phase}/{week}/{daily}")
    elif week is not None and phase is not None and dir is not None:
        os.chdir(f"{dir}/{phase}/{week}")
    elif phase is not None and dir is not None:
        os.chdir(f"{dir}/{phase}")
    elif dir is not None:
        os.chdir(f"{dir}")

def check_phase_folders():
    folders = [f for f in os.listdir(".") if os.path.isdir(f)]
    folders.remove(".github")
    folders.remove(".git")

    for folder in folders:
        if folder not in problems:
            print(f"Phase folder {folder} name is not valid")
            exit(1)
    return folders

def check_week_folders(phase_folder):
    folders = [f for f in os.listdir() if os.path.isdir(f)]
    phase_data = problems[phase_folder]

    for folder in folders:
        if folder not in phase_data:
            print(f"Week folder {folder} name is not valid")
            exit(1)
    return folders

def check_daily_folders(phase_folder, week_folder):
    folders = [f for f in os.listdir() if os.path.isdir(f)]
    week_data = problems[phase_folder][week_folder]

    for folder in folders:
        parts = folder.split(" ")
        parts[0] = parts[0][:-1]
        problem = {"problemNum": parts[0], "title": " ".join(parts[1:])}

        if problem not in week_data:
            print(f"Day folder {folder} name is not valid")
            exit(1)
    return folders

def check_files(phase_folder):
    files = [f for f in os.listdir() if os.path.isfile(f)]

    for file in files:
        if file == ".gitkeep":
            continue

        user_with_ext = file.replace(phase_folder, "")
        if not re.match(
            r"\s\([A-Za-z0-9 -_]+\)\.\b(cpp|rb|py|js|ts|c|java|php|dart|cs|exs)\b",
            user_with_ext,
        ):
            print(f"File {file} name is not valid")
            exit(1)

    check_duplicate(files)

def naming_checker_main():
    global problems
    problems = read_data()
    phase_folders = check_phase_folders()
    dir = os.getcwd()

    for phase_folder in phase_folders:
        change_directory(phase=phase_folder, dir=dir)
        week_folders = check_week_folders(phase_folder)

        for week_folder in week_folders:
            change_directory(week=week_folder, phase=phase_folder, dir=dir)
            daily_folders = check_daily_folders(phase_folder, week_folder)

            for daily_folder in daily_folders:
                change_directory(daily=daily_folder, week=week_folder, phase=phase_folder, dir=dir)
                check_files(daily_folder)
                change_directory(week=week_folder, phase=phase_folder, dir=dir)
            check_duplicate(daily_folders)
            change_directory(phase=phase_folder, dir=dir)
        check_duplicate(week_folders)
        change_directory(dir=dir)
    check_duplicate(phase_folders)
    print("All files are valid")

if __name__ == "__main__":
    naming_checker_main()
