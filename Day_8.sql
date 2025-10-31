USE LibraryDB;

-- We change the delimiter so we can use ';' inside our routines
DELIMITER $$


CREATE PROCEDURE sp_GetStudentBorrows(IN p_student_id INT)
BEGIN
    SELECT
        S.student_name,
        B.title AS book_title,
        Br.borrow_date
    FROM Borrow Br
    INNER JOIN Students S ON Br.student_id = S.student_id
    INNER JOIN Books B ON Br.book_id = B.book_id
    WHERE S.student_id = p_student_id AND Br.return_date IS NULL;
END$$



CREATE FUNCTION fn_GetAuthorBookCount(p_author_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_book_count INT;

    SELECT COUNT(*)
    INTO v_book_count
    FROM Books
    WHERE author_id = p_author_id;

    RETURN v_book_count;
END$$

-- Change the delimiter back to normal
DELIMITER ;