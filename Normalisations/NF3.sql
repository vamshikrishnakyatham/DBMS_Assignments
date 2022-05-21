CREATE Table Student4(
Std_No int NOT NULL,
Std_Name varchar(45) NOT NULL,
Std_State varchar(45) ,
Std_Cntry varchar(45),
primary key(Std_No)
);
SELECT * FROM Student4;
Drop table Student;
INSERT INTO Student4 
    (Std_No, Std_Name, Std_State, Std_Cntry) 
VALUES 
    (1,"Ram","Haryana","India"),
    (2,"Suresh","Punjab","India"),
    (1,"Ram","Haryana","India");

CREATE Table Student5(
Std_State varchar(45) ,
Std_Cntry varchar(45),
primary key(Std_State)
); 
SELECT * FROM Student5;

INSERT INTO Student5 
    (Std_State, Std_Cntry) 
VALUES 
    ("Punjab","India"),
    ("Haryana","India");