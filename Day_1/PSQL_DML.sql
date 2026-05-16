-- Insert Records
INSERT INTO dbo.test1 VALUES (1,100,'Captain');
INSERT INTO def.test1 VALUES (1,200,'PostgreSQL');

INSERT INTO dbo.test1 (col1, col2, col3)
VALUES
(2, 300, 'SQL'),
(3, 400, 'Server'),
(4, 500, 'Linux');


SELECT * FROM dbo.test1;
SELECT * FROM def.test1;


-- UPDATE Statements

UPDATE dbo.test1
SET col2 = 999
WHERE col1 = 1;


UPDATE dbo.test1
SET
    col2 = 777,
    col3 = 'Updated_Server'
WHERE col1 = 3;


UPDATE dbo.test1
SET col3 = 'HighValue'
WHERE col2 >= 500;



SELECT * FROM dbo.test1;


-- DELETE Statements


DELETE FROM dbo.test1
WHERE col1 = 2;


DELETE FROM dbo.test1
WHERE col2 >= 700;


DELETE FROM def.test1;


SELECT * FROM dbo.test1;
SELECT * FROM def.test1;