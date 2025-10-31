# sql-intern-task-8
Learning reusable SQL blocks

## Files
- [cite_start]`Day_8.sql` — SQL script that creates one stored procedure and one function.

## Description
[cite_start]This script demonstrates how to create reusable SQL blocks (stored routines).
- **`CREATE PROCEDURE`:** Creates `sp_GetStudentBorrows(IN p_student_id INT)`. This procedure takes a student's ID as input and returns a table of all books that student currently has checked out.
- **`CREATE FUNCTION`:** Creates `fn_GetAuthorBookCount(p_author_id INT)`. This function takes an author's ID as input and returns a single integer representing the total number of books they have in the `Books` table.
- **Usage Examples:** The script includes commented-out examples of how to `CALL` the procedure and how to `SELECT` the function.

## How to run
1.  Ensure you have run the `Day_1.sql` (Task 1) and `Day_2.sql` (Task 2) scripts.
2.  Open and run this `Day_8.sql` script to create the procedure and function.
3.  You can then use them as shown in the "HOW TO USE THEM" section at the bottom of the script.
