import os

def get_folders():
    return [f for f in os.listdir(".") if os.path.isdir(f)]

def get_files():
    return [f for f in os.listdir(".") if os.path.isfile(f)]

def change_directory(dir=None, phase=None, week=None, daily=None):
    if daily is not None and week is not None and phase is not None and dir is not None:
        os.chdir(f"{dir}/{phase}/{week}/{daily}")
    elif week is not None and phase is not None and dir is not None:
        os.chdir(f"{dir}/{phase}/{week}")
    elif phase is not None and dir is not None:
        os.chdir(f"{dir}/{phase}")
    elif dir is not None:
        os.chdir(f"{dir}")

def check_author_line(file=None):
    if file is not None:
        if file == ".gitkeep":
            return

        with open(file, "r") as f:
            lines = f.readlines()
            for line in lines:
                words = line.lower().split(" ")
                for word in words:
                    if "author:" in word or (
                        "author" in word and ":" in words and "author:" not in words
                    ):
                        return

    print(f"Author line is not in {file} file")
    exit(1)

def author_checker_main():
    dir = os.getcwd()
    phases_folders = get_folders()
    phases_folders.remove(".git")
    phases_folders.remove(".github")

    for phase_folder in phases_folders:
        change_directory(phase=phase_folder, dir=dir)
        weeks_folders = get_folders()

        for week_folder in weeks_folders:
            change_directory(week=week_folder, phase=phase_folder, dir=dir)
            daily_folders = get_folders()

            for daily_folder in daily_folders:
                change_directory(daily=daily_folder, week=week_folder, phase=phase_folder, dir=dir)
                files = get_files()

                for file in files:
                    check_author_line(file=file)

                change_directory(phase=phase_folder, dir=dir)
        change_directory(dir=dir)

if __name__ == "__main__":
    author_checker_main()
