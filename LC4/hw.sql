USE School;
GO

-- students (sid, sname , email , grade)
-- teachers (tid, tname , email , salary )
-- courses (cid, cname , hour )
-- choices (no, sid , tid , cid , score )

-- (1)
-- CREATE VIEW VIEWC
-- (NO, SID, CID, CNAME, SCORE)
-- AS SELECT NO, SID, COURSES.cid, CNAME, SCORE
-- FROM CHOICES, COURSES
-- WHERE CHOICES.CID=COURSES.cid

-- (2)
-- CREATE VIEW VIEWS
-- (SNAME, NO, SID, CID, SCORE)
-- AS SELECT SNAME, NO, CHOICES.sid, CID, SCORE
-- FROM STUDENTS, CHOICES
-- WHERE STUDENTS.SID=CHOICES.sid

-- (3)
-- CREATE VIEW S1
-- (SID, SNAME, GRADE)
-- AS SELECT SID, SNAME, GRADE
-- FROM STUDENTS
-- WHERE grade<1998

-- (4)
-- SELECT *
-- FROM VIEWS
-- WHERE SNAME='uxjof'

-- (5)
-- SELECT SID, SCORE
-- FROM VIEWS
-- WHERE VIEWS.CID =(
--     SELECT CID 
--     FROM COURSES 
--     WHERE COURSES.cname='UML'
-- )

-- (6)
-- INSERT
-- INTO S1
-- VALUES ('60000001', 'Lily', '2001')

-- (7)
-- -- Update VIEW
-- CREATE VIEW S1
-- (SID, SNAME, GRADE)
-- AS SELECT SID, SNAME, GRADE
-- FROM STUDENTS
-- WHERE GRADE<1998
-- WITH CHECK OPTION;
-- GO

-- -- try to insert
-- INSERT INTO S1
-- VALUES ('600000011', 'Lily', 1997)

-- -- delete record
-- DELETE FROM S1
-- WHERE GRADE = 1999

-- (8)
-- UPDATE VIEWS
-- SET SCORE = SCORE-5
-- WHERE SNAME='uxjof'

-- (9)
-- DROP VIEW VIEWC
-- DROP VIEW VIEWS
-- DROP VIEW S1