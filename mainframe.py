from students_function import *
from lecturer_function import *
from current_time import *
import os
import time



def intro_screen():
    try:
        user_role = str(input("\nAre you a student or lecturer?: "))
        if user_role == "student":
            name = str(input("\nPlease enter your full name: "))
            student_data = get_student_name(name)

            if student_data:
                print("\nWelcome, " + name + "!")
                time.sleep(2)
                student_menu(student_data[0])  # Return the student ID
            else:
                print("\nStudent not found. Please check your name and try again.")
                intro_screen()
        elif user_role == "lecturer":
            lecturer_name = str(input("\nPlease enter your full name: "))
            lecturer_data = get_lecturer_name(lecturer_name)

            if lecturer_data:
                lecturer_id = str(input("\nPlease enter your lecturer ID as a password: "))
                if lecturer_id == str(lecturer_data[0]):  # Assuming lecturer ID is stored as a string
                    print("\nWelcome, " + lecturer_name + ".")
                    time.sleep(2)
                    lecturer_menu(lecturer_data[0])  # Pass lecturer_ID to lecturer_menu
                else:
                    print("\nIncorrect password. Try again.")
                    intro_screen()
            else:
                print("\nLecturer not found. Please check your name and try again.")
                intro_screen()
        else:
            print("\nSeems like you made a mistake. Try again.")
            intro_screen()
    except ValueError:
        print("\nSeems like you've made a mistake. Try again.")
        intro_screen()


def student_menu(student_id):
    while True:
        os.system('cls')
        print(f"Welcome, Student!")
        print("1. Check Grades")
        print("2. Check Information")
        print("3. Return to Main Menu")

        choice = input("Enter your choice (1, 2, or 3): ")

        if choice == "1":
            display_student_grades_from_db(student_id)
        elif choice == "2":
            display_student_info(student_id)
        elif choice == "3":
            break
        else:
            print("Invalid choice. Please enter 1, 2, or 3.")
            time.sleep(2)


def lecturer_menu(lecturer_id):
    os.system('cls')
    print("Good " + greeting + ", lecturer. It is currently " + TwoFourHrClock)
    print("\
\nWelcome to the Ouval Academy Database. \n\
For general information and usage, use the word HELP.\n\
To access administrator data, use the word ADMIN and enter the administrator password.\n\
                \n\
--------------------------------------------------------------\n")
    user_action = str(input("Awaiting Input... ")).lower()

    if user_action == "students".casefold():
        view_courses(lecturer_id)

    if user_action == "help":
        help_menu(lecturer_id)
    elif user_action == "admin":
        os.system('cls')
        print("no.")
        time.sleep(2.25)
        lecturer_menu(lecturer_id)
    else:
        time.sleep(2.25)
        lecturer_menu(lecturer_id)


def help_menu(lecturer_id):
    
    os.system('cls')
    print("Good " + greeting + ", lecturer. It is currently " + TwoFourHrClock + "\n")
    
    print(">STUDENTS\n\
To see the list of current students.\n")
    
    print(">EDIT\n\
To edit student data.\n")

    print(">MENU\n\
Return to the menu.\n")
    
    user_input = str(input("Awaiting user input... ")).lower()
    
    if user_input == "students":
        view_courses(lecturer_id)
    elif user_input == "gamerec":
        print("Valorant")
    elif user_input == "quit":
        exit()               
    else:
        print("feature under construction/not working rn, try again.")
        help_menu(lecturer_id)
