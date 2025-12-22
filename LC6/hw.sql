USE School;
GO


-- (1)
-- CREATE TABLE class(
--     class_id VARCHAR(4) NOT NULL,
--     name VARCHAR(10) NULL,
--     department VARCHAR(20) NULL,
--     PRIMARY KEY(class_id)
-- )


-- (2)
-- SET XACT_ABORT ON
-- BEGIN TRANSACTION T3
-- insert into class VALUES ('0001', '01CSC', 'CS')
-- BEGIN TRANSACTION T4
-- insert into class VALUES ('0001', '01CSC', 'CS')

-- SELECT * FROM class

-- (3)
-- UPDATE class
-- SET class_id = NULL
-- WHERE name='01CSC'

-- (4)
-- INSERT INTO class VALUES ('0002', '01CSC', 'CS')
-- -- INSERT INTO class VALUES ('0002', '03CSC', 'CS')

-- SELECT * FROM class

-- (5)
-- SET XACT_ABORT ON
-- BEGIN TRANSACTION T1
-- INSERT INTO class VALUES ('0003', '03CSC', 'CS')
-- INSERT INTO class VALUES ('0001', '03CSC', 'CS')

-- SELECT * FROM class

-- (6)
-- ALTER TABLE class DROP CONSTRAINT class_id
-- ALTER TABLE class
-- ADD PRIMARY KEY(name)
