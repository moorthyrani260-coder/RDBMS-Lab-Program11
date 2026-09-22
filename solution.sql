

DROP DATABASE IF EXISTS UniversityDB;
CREATE DATABASE UniversityDB;

USE UniversityDB;

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50) NOT NULL
);

CREATE TABLE Learner (
    LearnerID INT PRIMARY KEY,
    LearnerName VARCHAR(50) NOT NULL,
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Subject (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50) NOT NULL
);

CREATE TABLE Registration (
    RegistrationID INT PRIMARY KEY,
    LearnerID INT,
    SubjectID INT,
    FOREIGN KEY (LearnerID)
        REFERENCES Learner(LearnerID),
    FOREIGN KEY (SubjectID)
        REFERENCES Subject(SubjectID)
);

INSERT INTO Faculty VALUES
(10, 'Information Technology'),
(20, 'Business Administration');

INSERT INTO Learner VALUES
(501, 'Karthik', 10),
(502, 'Nisha', 10),
(503, 'Rahul', 10),
(504, 'Sneha', 20);

INSERT INTO Subject VALUES
(601, 'Data Structures'),
(602, 'Cloud Computing'),
(603, 'Java Programming');

INSERT INTO Registration VALUES
(701, 501, 601),
(702, 501, 602),
(703, 502, 601),
(704, 503, 603),
(705, 504, 601);
