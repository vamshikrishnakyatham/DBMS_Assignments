CREATE Table Student(
Std_No int NOT NULL,
Std_Name varchar(45) NOT NULL,
Std_PhnNum bigint ,
Std_State varchar(45) ,
Std_Cntry varchar(45),
primary key(Std_No,Std_PhnNum)
);
SELECT * FROM Student;
Drop table Student;
INSERT INTO Student 
    (Std_No, Std_Name, Std_PhnNum, Std_State, Std_Cntry) 
VALUES 
    (1,"Ram",'9381463151',"Haryana","India"),
    (2,"Suresh",'6303540734',"Punjab","India"),
    (1,"Ram",'8309306471',"Haryana","India");

    