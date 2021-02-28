DECLARE @x int = 2;
DECLARE @result NVARCHAR(1000) = '';
WHILE(@x <= 1000)
    BEGIN
        DECLARE @isPrime int = 0;
        DECLARE @y int = 1;
        WHILE(@y < @x)
            BEGIN
                IF (@x % @y = 0)
                    SET @isPrime = @isPrime + 1;

                IF (@isPrime = 2)
                    BREAK;

                SET @y = @y + 1;
            END

        IF (@isPrime <> 2)
            SET @result += CAST(@x AS NVARCHAR(1000)) + '&';

        SET @x = @x + 1;
        SET @isPrime = 0;
    END
SELECT REVERSE(SUBSTRING(REVERSE(@result), 2, 9999));
