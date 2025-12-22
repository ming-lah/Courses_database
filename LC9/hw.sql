USE School;
GO


-- (1)
-- CREATE TRIGGER T4 ON Worker
-- FOR INSERT
-- AS
-- IF EXISTS(
--     SELECT 1
--     FROM inserted
--     WHERE Sage IS NULL
--     OR Sage < (SELECT ISNULL(MAX(sage), 0) FROM Worker WHERE Sage IS NOT NULL)
-- )
-- BEGIN
-- PRINT 'Sage must be bigger than all sage in worker'
-- ROLLBACK TRANSACTION
-- END


-- (2)
-- INSERT INTO Worker VALUES ('00004', 'c', 'F', 9, 'TEST')

-- (3)
-- CREATE TRIGGER T5 ON Worker
-- FOR UPDATE
-- AS
-- IF EXISTS(
--     SELECT 1
--     FROM inserted, deleted
--     WHERE inserted.sage < deleted.sage
--     AND inserted.Number = deleted.Number
-- )
-- BEGIN
-- PRINT 'Can not decrease'
-- ROLLBACK TRANSACTION
-- END

-- (4)
-- SELECT * from Worker
-- UPDATE Worker set sage=11 WHERE Number='1'

-- (5)
-- CREATE TRIGGER T6 ON Worker
-- FOR UPDATE
-- AS 
-- IF EXISTS(
--     SELECT 1
--     FROM deleted
--     WHERE deleted.Number= '0001'
-- )
-- BEGIN
-- PRINT '...'
-- ROLLBACK TRANSACTION
-- END

-- (6)
-- CREATE VIEW v_stu_card
-- AS
-- SELECT
--     sid,
--     sname,
--     email,
--     grade,
--     card_id,
--     remained_money
-- FROM STUDENTS, Stu_Card
-- WHERE STUDENTS.sid=Stu_Card.stu_id

-- CREATE TRIGGER T7 ON v_stu_card
-- INSTEAD OF INSERT, UPDATE
-- AS
-- IF UPDATE(sid)
-- BEGIN
-- PRINT 'cant not update sid'
-- ROLLBACK TRANSACTION
-- END

-- ELSE
-- BEGIN
--     UPDATE s
--     SET
--         s.sname = i.sname,
--         s.email = i.email,
--         s.grade = i.grade
--     FROM STUDENTS s, inserted i
--     WHERE s.sid = i.sid

--     UPDATE c
--     SET
--         c.card_id = i.card_id,
--         c.remained_money = i.remained_money
--     FROM Stu_Card c, inserted i
--     WHERE c.stu_id = i.sid
-- END


-- UPDATE v_stu_card
-- SET remained_money = remained_money + 50,
--     email = 'newmail@xx.com'
-- WHERE sid = '800005753'