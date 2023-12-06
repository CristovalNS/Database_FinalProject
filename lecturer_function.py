from getter_functions import *
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


# def view_students_in_course(lecturer_id, course_id):
#     # Fetch students enrolled in the selected course
#     students_in_course = get_students_in_course(lecturer_id, course_id)
#
#     if not students_in_course:
#         print("No students enrolled in this course.")
#     else:
#         # Fetch students with grades based on their student ID
#         student_ids = [student[0] for student in students_in_course]
#         students_with_grades = get_students_with_grades(student_ids)
#
#         print("\nStudents Enrolled in the Course:")
#         for student in students_with_grades:
#             student_id, student_name, grade, numerical_grade = student
#             print(f"{student_id}. {student_name} - Grade: {grade} ({numerical_grade})")
#
#     input("\nPress Enter to return to the menu...")

# def view_students_in_course(lecturer_id, course_id):
#     # Fetch students enrolled in the selected course with grades
#     students_in_course = get_students_in_course_with_grades(lecturer_id, course_id)
#
#     if not students_in_course:
#         print("No students enrolled in this course.")
#     else:
#         print("\nStudents Enrolled in the Course:")
#         for student in students_in_course:
#             student_id, student_name, grade = student
#             print(f"{student_id}. {student_name} - Grade: {grade}")
#
#     input("\nPress Enter to return to the menu...")

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