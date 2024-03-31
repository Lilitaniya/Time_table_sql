/*
CREATE DEFINER=`root`@`localhost` FUNCTION `get_even_numbers_up_to`(n INT) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE even_numbers TEXT DEFAULT '';
    
    IF n > 0 AND n MOD 2 = 0 THEN -- Если n чётное
        SET even_numbers = CAST(n AS CHAR);
    END IF;
    
    SET n = n - 1;
    WHILE n > 0 DO
        IF n MOD 2 = 0 THEN
            IF even_numbers = '' THEN
                SET even_numbers = CAST(n AS CHAR);
            ELSE
                SET even_numbers = CONCAT(even_numbers, ',', n);
            END IF;
        END IF;
        SET n = n - 1;
    END WHILE;
    
    IF even_numbers <> '' AND n % 2 = 0 THEN -- Если n чётное и есть другие чётные числа в результате
        SET even_numbers = CONCAT(even_numbers, ',', n);
    END IF;
    
    IF even_numbers = '' THEN
        RETURN NULL;
    ELSE
        RETURN even_numbers;
    END IF;
END
Это функция, которую я запихнула в комментарии потому что она не выгружается в файл иначе. Так что ее надо положить в функции и тогда через селект все отлично работает (могу скрины кинуть, если что) */

SELECT get_even_numbers_up_to(20);
