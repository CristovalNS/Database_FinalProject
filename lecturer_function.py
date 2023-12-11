from sql_queries import *
import time


def view_courses(lecturer_id):
    # Fetch courses taught by the lecturer based on lecturer_id
    lecturer_courses = get_lecturer_courses(lecturer_id)

    if not lecturer_courses:
        print("You are not currently teaching any courses.")
        input("\nPress Enter to return to the menu...")
        return

    print("Courses Taught:")
    for course in lecturer_courses:
        print(f"{course[0]}. {course[1]}")

    selected_course_id = input("\nEnter the ID of the course to view students (or '0' to go back): ")

    if selected_course_id == '0':
        return
    elif not selected_course_id.isdigit():
        print("Invalid input. Please enter a valid course ID.")
        time.sleep(2)
        view_courses(lecturer_id)
    else:
        selected_course_id = int(selected_course_id)
        view_students_in_course(lecturer_id, selected_course_id)


def view_students_in_course(lecturer_id, course_id):
    # Fetch students enrolled in the selected course with grades
    students_in_course = get_students_in_course_with_grades(lecturer_id, course_id)

    if not students_in_course:
        print("No students enrolled in this course.")
    else:
        print("\nStudents Enrolled in the Course:")
        for student in students_in_course:
            student_id, student_name, grade, numerical_grade = student
            print(f"{student_id}. {student_name} - Grade: {grade} ({numerical_grade})")

    input("\nPress Enter to return to the menu...")


def edit_student_grade(lecturer_id):
    # Display courses taught by the lecturer
    lecturer_courses = get_lecturer_courses(lecturer_id)

    if not lecturer_courses:
        print("You are not currently teaching any courses.")
        input("\nPress Enter to return to the menu...")
        return

    print("Courses Taught:")
    for course in lecturer_courses:
        print(f"{course[0]}. {course[1]}")

    # Get input for the course to edit grades
    course_id_to_edit = input("\nEnter the ID of the course to edit student grades (or '0' to go back): ")

    if course_id_to_edit == '0':
        return

    if not course_id_to_edit.isdigit():
        print("Invalid input. Please enter a valid course ID.")
        time.sleep(2)
        edit_student_grade(lecturer_id)
    else:
        course_id_to_edit = int(course_id_to_edit)

        # Fetch students and their grades in the selected course
        students_in_course = get_students_in_course_with_grades(lecturer_id, course_id_to_edit)

        if not students_in_course:
            print("No students enrolled in this course.")
            input("\nPress Enter to return to the menu...")
            return

        print("\nStudents Enrolled in the Course:")
        for student in students_in_course:
            print(f"{student[0]}. {student[1]} - Grade: {student[2]} ({student[3]})")

        # Get input for the student and the new grade
        student_id_to_edit = input("\nEnter the ID of the student to edit the grade (or '0' to go back): ")

        if student_id_to_edit == '0':
            return

        if not student_id_to_edit.isdigit():
            print("Invalid input. Please enter a valid student ID.")
            time.sleep(2)
            edit_student_grade(lecturer_id)
        else:
            student_id_to_edit = int(student_id_to_edit)

            new_grade = input(f"Enter the new grade for the student with ID {student_id_to_edit}: ")

            # Update the grade in the database
            update_student_grade(student_id_to_edit, course_id_to_edit, new_grade)

            print(f"Grade for student with ID {student_id_to_edit} in course {course_id_to_edit} updated successfully.")

            input("\nPress Enter to return to the menu...")


def edit_mode(lecturer_id):
    print("Edit Mode - You can edit the data of students in their respective courses.")
    edit_student_grade(lecturer_id)

