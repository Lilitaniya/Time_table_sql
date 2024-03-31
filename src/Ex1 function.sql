/*
CREATE DEFINER=`root`@`localhost` FUNCTION `ConvertSecondsToDaysHours`(seconds INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
  DECLARE days INT;
  DECLARE hours INT;
  DECLARE minutes INT;
  DECLARE remaining_seconds INT;
  
  SET days = seconds / 86400;
  SET seconds = seconds % 86400;
  
  SET hours = seconds / 3600;
  SET seconds = seconds % 3600;
  
  SET minutes = seconds / 60;
  SET remaining_seconds = seconds % 60;
  
  RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remaining_seconds, ' seconds');
END
Это функция, которую я запихнула в комментарии потому что она не выгружается в файл иначе. Так что ее надо положить в функции и тогда через селект все отлично работает */

SELECT ConvertSecondsToDaysHours(123456);
