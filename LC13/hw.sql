-- use School
-- GO

-- (1)
-- EXEC sp_addlogin '王二', '123456', 'school', 'English'
-- go
-- use School
-- GO
-- exec sp_grantdbaccess '王二'

-- create view grade2000 as(
--     SELECT * FROM STUDENTS
--     WHERE grade=2000
-- )

-- (2)
-- USE School
-- GO
-- GRANT select on grade2000 to 王二


-- (3)
-- use School
-- GO
-- grant update on dbo.grade2000(sname) to 王二
-- GRANT UPDATE (sname) ON dbo.grade2000 TO [王二] -- same but better