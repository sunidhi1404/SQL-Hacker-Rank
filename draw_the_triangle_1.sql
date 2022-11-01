/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
* 
Write a query to print the pattern P(20).
*/

DELIMITER $$
CREATE PROCEDURE draw_triangle(num INT)
BEGIN
    CREATE TEMPORARY TABLE final_result(i INT, star VARCHAR(255));
    SET @i=0;
    WHILE @i < num
    DO
        INSERT INTO final_result VALUES(@i, REPEAT('* ', @i + 1));
        SET @i = @i + 1;
    END WHILE;
    SELECT star FROM final_result ORDER BY i DESC;
END $$
DELIMITER ;

CALL draw_triangle(20);
