import mysql.connector

# Replace the placeholders with your MySQL server information
host = "127.0.0.1"
user = "root"
password = "*neoSQL01"
database = "DB_UniversityCourseManagement"

# Connect to the MySQL server
conn = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)


# Function to fetch student data from the database
def get_student_name(student_name):
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM student_data WHERE student_name = %s", (student_name,))
    return cursor.fetchone()


# Function to fetch student grades from the database
def get_student_grades(student_id):
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM grades_data WHERE student_ID = %s", (student_id,))
    return cursor.fetchall()


# Function to fetch student data from the database by student ID
def get_student_data_by_id(student_id):
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM student_data WHERE student_ID = %s", (student_id,))
    return cursor.fetchone()


# Function to fetch course data from the database by course ID
def get_course_data_by_id(course_id):
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM course_data WHERE course_ID = %s", (course_id,))
    return cursor.fetchone()


def get_students_in_course_with_grades(lecturer_id, course_id):
    cursor = conn.cursor()
    # Replace this query with your actual query to get course_IDs taught by the lecturer
    cursor.execute("""
        SELECT course_ID
        FROM course_data
        WHERE lecturer_ID = %s
    """, (lecturer_id,))

    lecturer_courses = cursor.fetchall()

    if not lecturer_courses:
        return []  # No courses taught by the lecturer

    students_in_course = []

    for course in lecturer_courses:
        current_course_id = course[0]

        if current_course_id == course_id:
            # Fetch student_IDs and grades enrolled in the current course
            cursor.execute("""
                SELECT e.student_ID, g.grade, g.numerical_grade
                FROM enrollment_status e
                LEFT JOIN grades_data g ON e.student_ID = g.student_ID AND e.course_ID = g.course_ID
                WHERE e.course_ID = %s
            """, (course_id,))

            student_grades = cursor.fetchall()

            # Fetch student names using the student_IDs
            for student_grade in student_grades:
                student_id, letter_grade, numerical_grade = student_grade
                cursor.execute("""
                    SELECT student_name
                    FROM student_data
                    WHERE student_ID = %s
                """, (student_id,))

                student_name = cursor.fetchone()
                students_in_course.append((student_id, student_name[0], letter_grade, numerical_grade))

    return students_in_course


# def get_students_with_grades(student_ids):
#     cursor = conn.cursor()
#     students_with_grades = []
#
#     for student_id in student_ids:
#         cursor.execute("SELECT grade, numerical_grade FROM grades_data WHERE student_ID = %s",
#                        (student_id,))
#         result = cursor.fetchone()
#
#         if result:
#             student_name, grade, numerical_grade = result
#             students_with_grades.append((student_id, student_name, grade, numerical_grade))
#
#     return students_with_grades


def get_lecturer_name(lecturer_name):
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM lecturer_data WHERE lecturer_name = %s", (lecturer_name,))
    return cursor.fetchone()


def get_lecturer_id(lecturer_id):
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM lecturer_data WHERE lecturer_ID = %s", (lecturer_id,))
    return cursor.fetchone()


def get_lecturer_courses(lecturer_id):
    cursor = conn.cursor()
    cursor.execute("SELECT course_ID, course_name FROM course_data WHERE lecturer_ID = %s", (lecturer_id,))
    return cursor.fetchall()
