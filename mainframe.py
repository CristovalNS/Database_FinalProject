from students_function import *
from lecturer_function import *
from admin_function import *
from current_time import *
import os
import time


def intro_screen():
    try:
        user_role = str(input("\nAre you a student or a lecturer?: "))

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
                    print(f"Good {greeting}, lecturer. It is currently {TwoFourHrClock}")
                    time.sleep(2)
                    lecturer_menu(lecturer_data[0])  # Pass lecturer_ID to lecturer_menu
                else:
                    print("\nIncorrect password. Try again.")
                    intro_screen()
            else:
                print("\nLecturer not found. Please check your name and try again.")
                intro_screen()

        elif user_role == "ADMIN":
            # admin_password = input("\nEnter the admin password: ")  # You can replace this with your actual admin password logic
            #
            # # Check if the admin password is correct
            # if admin_password == "your_actual_admin_password":
            admin_menu()
            # else:
            #     print("Incorrect admin password. Returning to the main menu.")
            #     time.sleep(2)
            #     intro_screen()

        else:
            print("\nSeems like you made a mistake. Try again.")
            intro_screen()

    except ValueError:
        print("\nSeems like you've made a mistake. Try again.")
        intro_screen()


def student_menu(student_id):
    while True:
        os.system('cls')
        print(f"Student Menu:")
        print("1. Check Grades")
        print("2. Check Information")
        print("3. Quit")

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
    while True:
        os.system('cls')
        print("Lecturer Menu:")
        print("1. View Courses")
        print("2. Edit Mode")
        print("3. Quit")

        user_action = input("Enter your choice (1, 2, or 3): ").lower()

        if user_action == "1":
            view_courses(lecturer_id)
        elif user_action == "2":
            edit_mode(lecturer_id)
        elif user_action == "3":
            break
        else:
            print("Invalid choice. Please enter 1, 2, or 3.")
            time.sleep(2)


def admin_menu():
    while True:
        os.system('cls')
        print("Admin Menu:")
        print("1. Add Course")
        print("2. Delete Course")
        print("3. Add Student")
        print("4. Remove Student")
        print("5. Add Student to Course")
        print("6. Delete Student from Course")
        print("7. Add Lecturer")
        print("8. Assign Course to Lecturer")
        print("9. Remove Lecturer")
        print("10. Quit")

        admin_action = input("Enter your choice (1-9): ").lower()

        if admin_action == "1":
            add_course()
        elif admin_action == "2":
            delete_course()
        elif admin_action == "3":
            add_student()
        elif admin_action == "4":
            remove_student()
        elif admin_action == "5":
            add_student_to_course()
        elif admin_action == "6":
            delete_student_from_course()
        elif admin_action == "7":
            add_lecturer()
        elif admin_action == "8":
            assign_course_to_lecturer()
        elif admin_action == "9":
            remove_lecturer()
        elif admin_action == "10":
            break
        else:
            print("Invalid choice. Please enter a valid option (1-10).")
            time.sleep(2)

