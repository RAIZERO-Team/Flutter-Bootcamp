from Member_Validation import Author_Checker, Naming_Checker # type: ignore

def main():
    print("Running Author Checker...")
    Author_Checker.author_checker_main()

    print("Running Naming Checker...")
    Naming_Checker.naming_checker_main()

if __name__ == "__main__":
    main()
