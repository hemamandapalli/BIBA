create table users
(
user_id int primary key,
user_name varchar(30) not null,
email varchar(50));

insert into users values
(1, 'Sumit', 'sumit@gmail.com'),
(2, 'Reshma', 'reshma@gmail.com'),
(3, 'Farhana', 'farhana@gmail.com'),
(4, 'hasna', 'hasna@gmail.com'),
(5, 'hasna', 'hasna@gmail.com');

select * from users;

SELECT user_name,
       COUNT(user_name) as count
FROM users
GROUP BY user_name
HAVING count(user_name) > 1;

WITH DuplicateCTE AS (
    SELECT user_id,user_name,email,ROW_NUMBER() OVER (PARTITION BY user_name, email ORDER BY user_id) AS RowNum
    FROM users
)
DELETE FROM DuplicateCTE WHERE RowNum > 1;
SELECT * FROM users;

SELECT *FROM users
WHERE user_name IS NULL OR email IS NULL;

----FIXING CAPITALIZATION FOR THE VALUES------ 
UPDATE users
SET user_name = upper(user_name);
---TO CHANGE COLUMN NAME------
EXEC sp_rename 'users."user_id"', 'UserID', 'COLUMN';
exec sp_rename 'users."email"','EMAILID','COLUMN';
---TO TABLE NAME ------
EXEC SP_RENAME 'users','USERS';
SELECT* FROM USERS;
------PARTITION BY-------
SELECT
    user_name,
    EMAILID,
    COUNT(user_name) OVER (PARTITION BY user_name) AS count
FROM
    USERS;

	select*from STUDENTS_MARKS;

	SELECT STUDENTSID, BRANCH, ROLLNO, MARKS,
    AVG(MARKS) OVER(PARTITION BY BRANCH) AS AVG_MARKS
FROM STUDENTS_MARKS;

SELECT STUDENTSID, BRANCH, ROLLNO, MARKS,
    AVG(MARKS) OVER(PARTITION BY ROLLNO) AS AVG_MARKS
FROM STUDENTS_MARKS;

SELECT STUDENTSID, BRANCH, ROLLNO, MARKS,
    AVG(MARKS) OVER(PARTITION BY STUDENTSID) AS AVG_MARKS
FROM STUDENTS_MARKS;