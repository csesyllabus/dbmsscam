CREATE DATABASE IF NOT EXISTS Procedures;
USE Procedures;

CREATE TABLE BUS(
    BUSNO VARCHAR(10) NOT NULL,
    SOURCE VARCHAR(10),
    DESTINATION VARCHAR(10),
    CAPACITY INT(2),
    PRIMARY KEY(BUSNO)
);
INSERT INTO BUS
VALUES('AP123 ', ' HYD ', ' CHENNAI ', ' 40 ');
INSERT INTO BUS
VALUES('AP789', 'VIZAG', 'HYDERABAD', 30);

DELIMITER //
CREATE PROCEDURE BUS_PROC1() BEGIN
SELECT *
FROM BUS;
END // 
CALL BUS_PROC1() // 

CREATE PROCEDURE SAMPLE2() 
BEGIN 
    DECLARE X INT(3);
    SET X=10; SELECT X;
END//
CALL SAMPLE2()//


CREATE PROCEDURE SIMPLE_PROC(OUT PARAMI INT)
BEGIN
    SELECT COUNT(*) INTO PARAMI FROM BUS;
END//
CALL SIMPLE_PROC(@X)//

SELECT @X//