/*
Write a query to print all prime numbers less than or equal to 10 . Print your result on a single line, and use the ampersand () character as your separator 
(instead of a space).
For example, the output for all prime numbers  would be:
2&3&5&7
*/

DELIMITER $$
CREATE PROCEDURE primeNumber()
BEGIN
    DECLARE highest_no INT DEFAULT 1000;
    DECLARE final_result TEXT DEFAULT '2';
    DECLARE temp_no INT;
    DECLARE current_no INT DEFAULT 3;
    DECLARE is_prime BOOLEAN;
    WHILE current_no <= highest_no 
    DO
        SET temp_no = 2;
        SET is_prime = TRUE;
        WHILE temp_no <= FLOOR(current_no / 2) DO
            IF current_no % temp_no = 0 then 
                SET is_prime = FALSE;
            END IF;
            SET temp_no = temp_no + 1;
        END WHILE;
        IF is_prime = true THEN 
        SET final_result = CONCAT(final_result, '&', current_no);
        END IF;
        SET current_no = current_no + 2;
    END WHILE;
    SELECT final_result;
END $$
DELIMITER ;

CALL primeNumber();
