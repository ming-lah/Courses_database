USE School
GO


-- SELECT * FROM TEACHERS 3928
-- SELECT * FROM COURSES

-- (1)
-- BEGIN TRAN
--     SELECT 'TRAN1' AS HINT, @@TRANCOUNT AS TRANSACTIONCOUNT
--     UPDATE STUDENTS SET grade=grade+1
--     WHERE SID='05212222'
--     BEGIN TRAN
--         SELECT 'TRAN2' AS HINT, @@TRANCOUNT AS TRANSACTIONCOUNT
--         INSERT TEACHERS VALUES ('200003125', 'ABC', 'TEST', '10000')
--         IF @@ERROR<>0
--         BEGIN
--             ROLLBACK TRAN
--             SELECT 'ROLLBACK (INNER FAILED)' AS HINT, @@TRANCOUNT AS TRANSACTIONCOUNT
--             RETURN
--         END
--     COMMIT TRAN
-- COMMIT TRAN


-- (2)
-- BEGIN TRAN
--     UPDATE TEACHERS
--     SET salary=salary+1
--     WHERE TEACHERS.tid='200003125'
--     SAVE TRAN tran_update_teacher
--     INSERT INTO COURSES
--     VALUES ('10001', 'DATABASE', 90)

--     IF @@ERROR!=0 OR @@ROWCOUNT >2
--     BEGIN
--         ROLLBACK TRAN tran_update_teacher
--         PRINT 'Failed updating the courses'
--         RETURN
--     END
-- COMMIT TRAN tran_update_teacher
-- GO

-- (3)
-- CREATE PROCEDURE UPDATECOURSE
--     @courseid char(10),
--     @coursename varchar(30),
--     @hour int,
--     @retunrString varchar(100) out
-- AS
-- BEGIN TRAN
--     IF NOT EXISTS (SELECT CID FROM COURSES WHERE CID=@courseid)
--         BEGIN
--             SELECT @retunrString = '课程不存在'
--             GOTO ONERROR
--         END
--     UPDATE COURSES
--     SET COURSES.cname=@coursename, COURSES.[hour]=@hour
--     WHERE CID=@courseid
--     IF @@ERROR<>0
--     BEGIN
--         SELECT @retunrString='修改课程信息失败'
--         GOTO ONERROR
--     END
--     SELECT @retunrString='修改课程信息成功'
--     PRINT @retunrString
--     COMMIT TRAN
--     RETURN
-- ONERROR:
--     PRINT @retunrString
--     ROLLBACK TRAN
-- GO

-- DECLARE @msg varchar(100)
-- EXEC UPDATECOURSE '99999','TESTCOURSE',48,@msg OUT
-- SELECT @msg AS msg

-- DECLARE @msg varchar(100)
-- EXEC UPDATECOURSE '10002','Operating System',96,@msg OUT
-- SELECT @msg AS msg

-- SELECT * FROM COURSES WHERE CID='10002'