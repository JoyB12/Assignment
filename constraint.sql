CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100)
);
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    task_description VARCHAR(255),
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);
CREATE TABLE Assignments (
    assignment_id INT PRIMARY KEY,
    task_id INT,
    user_id INT,
    status VARCHAR(50),
    FOREIGN KEY (task_id) REFERENCES Tasks(task_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Users (user_id, name, email) 
VALUES (1, 'Alice', 'alice@example.com');

INSERT INTO Users (user_id, name, email) 
(2, 'Bob', 'bob@example.com');

INSERT INTO Users (user_id, name, email) SQL> INSERT INTO Users (user_id, name, email)
   VALUES (3, 'Aline', 'aline@example.com');

INSERT INTO Users (user_id, name, email)
   VALUES (4, 'Joella', 'joe@example.com');


   INSERT INTO Projects (project_id, project_name)
VALUES (1, 'Website Redesign'), (2, 'Mobile App Development');

 INSERT INTO Projects (project_id, project_name)
   VALUES (2, 'Mobile App Development');


 INSERT INTO Projects (project_id, project_name)
    VALUES (3, 'E-Commerce Platform Development');


INSERT INTO Projects (project_id, project_name)
    VALUES (4, 'Email Marketing Campaign');

    SQL> INSERT INTO Tasks (task_id, task_description, project_id)
    VALUES (1, 'Design homepage', 1);


 INSERT INTO Tasks (task_id, task_description, project_id)
    VALUES (2, 'Develop login page', 1);


 INSERT INTO Tasks (task_id, task_description, project_id)
    VALUES (3, 'Test user authentication', 2);

    SQL> INSERT INTO Assignments (assignment_id, task_id, user_id, status)
    VALUES (1, 1, 1, 'In Progress');


SQL> INSERT INTO Assignments (assignment_id, task_id, user_id, status)
    VALUES (2, 2, 2, 'Not Started');


 INSERT INTO Assignments (assignment_id, task_id, user_id, status)
    VALUES (3, 3, 1, 'Completed');


    select * from users;

   USER_ID
----------
NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
         1
Alice
alice@example.com

         2
Bob
bob@example.com

   USER_ID
----------
NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------

         3
Aline
aline@example.com

         4
Joella

   USER_ID
----------
NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
joe@example.com


 select * from projects;

PROJECT_ID
----------
PROJECT_NAME
--------------------------------------------------------------------------------
         1
Website Redesign

         2
Mobile App Development


select * from tasks;

   TASK_ID
----------
TASK_DESCRIPTION
--------------------------------------------------------------------------------
PROJECT_ID
----------
         1
Design homepage
         1

         2
Develop login page
         1

   TASK_ID
----------
TASK_DESCRIPTION
--------------------------------------------------------------------------------
PROJECT_ID
----------

         3
Test user authentication
         2


 select * from assignments;

ASSIGNMENT_ID    TASK_ID    USER_ID
------------- ---------- ----------
STATUS
--------------------------------------------------
            1          1          1
In Progress

            2          2          2
Not Started

            3          3          1
Completed
