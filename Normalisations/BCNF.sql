CREATE Table Student6(
Std_No int NOT NULL,
Std_Name varchar(45) NOT NULL,
Course_No varchar(45),
Subj varchar(45),
Professor varchar(45),
primary key(Std_No,Course_No)
);
SELECT * FROM Student6;

INSERT INTO Student6 
    (Std_No, Std_Name, Course_No, subj, Professor) 
VALUES 
    (1,"Ram","C1","JAVA","prof1"),
    (1,"Ram","C2","DBMS","prof2"),
    (2,"Suresh","C3","C++","prof3"),
    (3,"Ravi","C3","C++","prof3");

CREATE Table Student7(
Std_No int NOT NULL,
Std_Name varchar(45) NOT NULL,
Course_No varchar(45),
primary key(Std_No,Course_No)
);
SELECT * FROM Student7;
INSERT INTO Student7 
    (Std_No, Std_Name, Course_No) 
VALUES 
    (1,"Ram","C1"),
    (1,"Ram","C2"),
    (2,"Suresh","C3"),
    (3,"Ravi","C3");

CREATE Table Student8(
Course_No varchar(45),
Professor varchar(45),
Subj varchar(45),
primary key(Course_No)
);
select * from Student8;

INSERT INTO Student8 
    (Course_No, Professor, Subj) 
VALUES 
    ("C1","prof1","JAVA"),
    ("C2","prof2","DBMS"),
    ("C3","prof3","C++");