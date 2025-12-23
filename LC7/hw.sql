-- to be finished

USE school
GO

-- CREATE TABLE Stu_Union(
--     sno CHAR(8) NOT NULL UNIQUE,
--     sanme CHAR(8),
--     ssex CHAR(1),
--     sage INT,
--     sdept CHAR(20),
--     CONSTRAINT PK_Stu_Union PRIMARY KEY(sno)
-- );
-- INSERT into Stu_Union VALUES ('10001', '李勇', '0', 24, 'EE')
-- INSERT INTO Stu_Union VALUES ('95002', '王敏', '1', 23, 'CS')
-- INSERT into Stu_Union VALUES ('95003', '王浩', '0', 25, 'EE')
-- INSERT INTO Stu_Union VALUES ('95005', '王杰', '0', 25, 'ES')
-- INSERT into Stu_Union VALUES ('95009', '李勇', '0', 25, 'EE')

-- CREATE table Course(
--     cno CHAR(4) NOT NULL UNIQUE,
--     cname VARCHAR(50) NOT NULL,
--     cpoints INT,
--     CONSTRAINT PK PRIMARY KEY(cno)
-- );

-- insert into Course VALUES ('0001', 'ComputerNetwork', 2);
-- insert into Course VALUES ('0002', 'Database', 3)

-- CREATE TABLE SC(
--     sno CHAR(8) REFERENCES Stu_Union (sno) on delete CASCADE,
--     cno CHAR(4) REFERENCES course(cno) on delete cascade,
--     grade INT
--     CONSTRAINT PK_SC PRIMARY KEY(sno, cno)
-- );
-- insert into sc VALUES ('95002', '0001', 2);
-- insert into sc VALUES ('95002', '0002', 2);
-- insert into sc VALUES ('10001', '0001', 2);
-- insert into sc VALUES ('10001', '0002', 2);

-- CREATE table Stu_Card(
--     card_id char(14),
--     stu_id char(10) REFERENCES students(sid) on delete CASCADE,
--     remained_money DECIMAL (10, 2),
--     CONSTRAINT PK_stu_card PRIMARY KEY (card_id)
-- );
-- insert into Stu_Card VALUES ('05212567', '800001216', 100.25)
-- insert into Stu_Card VALUES ('05212222', '800005753', 200.50)

-- CREATE table ICBC_Card(
--     bank_id char(20),
--     stu_card_id char(14) REFERENCES Stu_Card(card_id) on delete CASCADE,
--     restored_money decimal (10, 2)
--     CONSTRAINT PK_Icbc_card PRIMARY KEY (bank_id)
-- )
-- insert into ICBC_Card VALUES ('9558844022312', '05212567', 15000.1)
-- INSERT INTO ICBC_Card VALUES ('9558844023645', '05212222', 50000.3)


