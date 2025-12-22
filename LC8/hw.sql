-- use School

-- CREATE TABLE Worker(
--     Number CHAR(5),
--     Name CHAR(8) CONSTRAINT U1 UNIQUE,
--     Sex CHAR(1),
--     Sage INT CONSTRAINT U2 CHECK (Sage<=28),
--     Department CHAR(20),
--     CONSTRAINT FK_worker PRIMARY KEY(Number)
-- )
-- insert into Worker (Number, Name, Sex, Sage, Department)
-- VALUES ('00001', '李勇', 'M', 14, '科技部')
-- SELECT * FROM Worker


-- INSERT INTO Worker(Number, Name, Sex, Sage, Department)
-- VALUES('00002', '王勇', 'M', 38, '科技部')

-- CREATE RULE rule_sex as @VALUE IN ('F', 'M')
-- GO
-- exec sp_bindrule rule_sex, 'Worker.[sex]'


-- (1)
-- ALTER TABLE Worker ADD CONSTRAINT U3 CHECK (Sage>=0)

-- (2)
-- insert into Worker VALUES ('1', 'A', 'M', -1, 'test')

-- (3)
-- insert into Worker VALUES ('1', 'A', 'M', 10, 'test')

-- (4)
-- ALTER TABLE Worker ADD CONSTRAINT U4 CHECK (Sage<0)


-- (5)
-- CREATE RULE rule_sage AS @VALUE IN (1, 100)
-- GO
-- EXEC Sp_bindrule R2, 'Worker.[Sage]'

-- (6)
-- insert into Worker VALUES ('2', 'B', 'M', '101', 'test')

-- (7)
-- exec sp_unbindrule 'Worker.[Sage]'
-- insert into Worker VALUES ('2', 'B', 'M', '101', 'test')

-- (8)
-- CREATE RULE rule_three as @Sage>=50
-- EXEC sp_bindrule rule_three, 'Worker.Sage'
