CREATE Table Student1(
Std_No int NOT NULL,
Std_Name varchar(45) NOT NULL,
Course_No varchar(45),
Course_Fee int,
primary key(Std_No,Course_No)
);
SELECT * FROM Student1;
Drop table Student1;

INSERT INTO Student1 
    (Std_No, Std_Name, Course_No, Course_Fee) 
VALUES 
    (1,"Ram","C1",1000),
    (1,"Ram","C2",1000),
    (2,"Suresh","C3",2500),
    (3,"Ravi","C3",2500);
CREATE Table Student2(
Std_No int NOT NULL,
Std_Name varchar(45) NOT NULL,
Course_No varchar(45),
primary key(Std_No,Course_No)
);
SELECT * FROM Student2;
INSERT INTO Student2 
    (Std_No, Std_Name, Course_No) 
VALUES 
    (1,"Ram","C1"),
    (1,"Ram","C2"),
    (2,"Suresh","C3"),
    (3,"Ravi","C3");
    
CREATE Table Student3(
Course_No varchar(45),
Course_Fee int,
primary key(Course_No)
);


SELECT * FROM Student3;

INSERT INTO Student3 
    (Course_No, Course_Fee) 
VALUES 
    ("C1",1000),
    ("C2",1000),
    ("C3",2500);