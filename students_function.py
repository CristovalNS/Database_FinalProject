from sql_queries import *


def display_student_grades_from_db(student_id):
    student_data = get_student_data_by_id(student_id)

    if not student_data:
        print("Student not found.")
        return

    print(f"\nStudent: {student_data[1]}")
    print("\nCourse Grades:")

    grades_data = get_student_grades(student_id)

    if not grades_data:
        print("No grades available.")
    else:
        for grade_data in grades_data:
            course_id = grade_data[2]
            course_data = get_course_data_by_id(course_id)

            if not course_data:
                print(f"Course ID {course_id}: Unknown Course")
            else:
                print(f"Course ID {course_id}: {course_data[1]}")
                print(f"   Grade: {grade_data[3]} ({grade_data[4]})")

    input("\nPress Enter to return to the menu...")


def display_student_info(student_id):
    student_data = get_student_data_by_id(student_id)

    if not student_data:
        print("Student not found.")
        return

    print("\nStudent Information:")
    print(f"ID: {student_data[0]}")
    print(f"Name: {student_data[1]}")
    print(f"Date of Birth: {student_data[2]}")
    print(f"Gender: {student_data[3]}")
    print(f"Address: {student_data[4]}")
    print(f"Phone Number: {student_data[5]}")
    print(f"Email Address: {student_data[6]}")
    print(f"Major: {student_data[7]}")
    print(f"Year of Study: {student_data[8]}")
    print(f"Admission Date: {student_data[9]}")

    input("\nPress Enter to return to the menu...")