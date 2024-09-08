
CREATE database CancerAnalysis;

USE  CancerAnalysis;

CREATE TABLE CancerTypes (
    CancerTypeID INT PRIMARY KEY,
    CancerType VARCHAR(50),
    Description TEXT
);

CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    Treatment VARCHAR(50)
);

CREATE TABLE Patients (
    ID INT PRIMARY KEY,
    Age INT,
    CancerTypeID INT,
    Stage INT,
    DiagnosisYear INT,
    Screening VARCHAR(3),
    TreatmentID INT,
    Outcome VARCHAR(50),
    FOREIGN KEY (CancerTypeID) REFERENCES CancerTypes(CancerTypeID),
    FOREIGN KEY (TreatmentID) REFERENCES Treatments(TreatmentID)
);


INSERT INTO CancerTypes (CancerTypeID, CancerType, Description) VALUES
(1, 'Breast Cancer', 'A type of cancer that forms in the cells of the breasts.'),
(2, 'Cervical Cancer', 'A type of cancer that occurs in the cells of the cervix.');


INSERT INTO Treatments (TreatmentID, Treatment) VALUES
(1, 'Surgery'),
(2, 'Chemoradiation');

INSERT INTO Patients (ID, Age, CancerTypeID, Stage, DiagnosisYear, Screening, TreatmentID, Outcome) VALUES
(1, 45, 1, 2, 2020, 'No', 1, 'Not Survived'),
(2, 38, 2, 1, 2021, 'Yes', 1, 'Survived'),
(3, 52, 1, 3, 2022, 'No', 2, 'Not Survived'),
(4, 29, 2, 2, 2023, 'No', 1, 'Survived'),
(5, 47, 1, 1, 2020, 'Yes', 1, 'Survived'),
(6, 34, 2, 4, 2021, 'No', 2, 'Not Survived'),
(7, 50, 1, 2, 2022, 'No', 1, 'Not Survived'),
(8, 41, 2, 3, 2023, 'No', 2, 'Not Survived'),
(9, 55, 1, 4, 2020, 'No', 2, 'Not Survived'),
(10, 37, 2, 2, 2021, 'No', 1, 'Not Survived'),
(11, 48, 1, 1, 2022, 'Yes', 1, 'Survived'),
(12, 33, 2, 3, 2023, 'No', 2, 'Not Survived'),
(13, 46, 1, 2, 2020, 'No', 1, 'Not Survived'),
(14, 39, 2, 1, 2021, 'Yes', 1, 'Survived'),
(15, 51, 1, 3, 2022, 'No', 2, 'Not Survived'),
(16, 28, 2, 2, 2023, 'No', 1, 'Survived'),
(17, 49, 1, 1, 2020, 'Yes', 1, 'Survived'),
(18, 35, 2, 4, 2021, 'No', 2, 'Not Survived'),
(19, 53, 1, 2, 2022, 'No', 1, 'Not Survived'),
(20, 42, 2, 3, 2023, 'No', 2, 'Survived'),
(21, 56, 1, 4, 2020, 'No', 2, 'Not Survived'),
(22, 36, 2, 2, 2021, 'No', 1, 'Survived'),
(23, 44, 1, 1, 2022, 'Yes', 1, 'Survived'),
(24, 32, 2, 3, 2023, 'No', 2, 'Survived'),
(25, 47, 1, 2, 2020, 'No', 1, 'Survived'),
(26, 38, 2, 1, 2021, 'Yes', 1, 'Survived'),
(27, 52, 1, 3, 2022, 'No', 2, 'Not Survived'),
(28, 29, 2, 2, 2023, 'No', 1, 'Survived'),
(29, 45, 1, 1, 2020, 'Yes', 1, 'Survived'),
(30, 34, 2, 4, 2021, 'No', 2, 'Not Survived'),
(31, 50, 1, 2, 2022, 'No', 1, 'Not Survived'),
(32, 41, 2, 3, 2023, 'No', 2, 'Not Survived'),
(33, 55, 1, 4, 2020, 'No', 2, 'Not Survived'),
(34, 37, 2, 2, 2021, 'No', 1, 'Survived'),
(35, 48, 1, 1, 2022, 'Yes', 1, 'Survived'),
(36, 33, 2, 3, 2023, 'No', 2, 'Survived'),
(37, 46, 1, 2, 2020, 'No', 1, 'Not Survived'),
(38, 39, 2, 1, 2021, 'Yes', 1, 'Survived'),
(39, 51, 1, 3, 2022, 'No', 2, 'Not Survived'),
(40, 28, 2, 2, 2023, 'No', 1, 'Survived'),
(41, 49, 1, 1, 2020, 'Yes', 1, 'Survived'),
(42, 35, 2, 4, 2021, 'No', 2, 'Not Survived'),
(43, 53, 1, 2, 2022, 'No', 1, 'Not Survived'),
(44, 42, 2, 3, 2023, 'No', 2, 'Not Survived'),
(45, 56, 1, 4, 2020, 'No', 2, 'Not Survived'),
(46, 36, 2, 2, 2021, 'No', 1, 'Not Survived'),
(47, 44, 1, 1, 2022, 'Yes', 1, 'Survived'),
(48, 32, 2, 3, 2023, 'No', 2, 'Survived'),
(49, 47, 1, 2, 2020, 'No', 1, 'Not Survived'),
(50, 38, 2, 1, 2021, 'Yes', 1, 'Survived');

SELECT * FROM Patients
WHERE Stage = 1 AND Outcome = 'Survived';



SELECT * FROM Patients
WHERE Stage = 2 AND Outcome = 'Survived';



SELECT * FROM Patients
WHERE Stage = 3 AND Outcome = 'Survived';

SELECT * FROM Patients
WHERE Stage = 4 AND Outcome = 'Survived';


SELECT * FROM Patients 
WHERE Screening = 'Yes' AND Outcome = 'Survived';


SELECT * FROM Patients 
WHERE Screening = 'Yes' AND Outcome = 'Not Survived';

SELECT * FROM Patients 
WHERE Screening = 'No' AND Outcome = 'Survived';


SELECT * FROM Patients 
WHERE Screening = 'No' AND Outcome = 'Not Survived';

SELECT * FROM Patients 
WHERE Screening ='Yes' AND Stage =1;

SELECT * FROM Patients 
WHERE Screening ='Yes' AND Stage =2;

SELECT * FROM Patients 
WHERE Screening ='Yes' AND Stage =3;

SELECT * FROM Patients 
WHERE Screening ='Yes' AND Stage =4;


SELECT * FROM Patients 
WHERE Screening ='No' AND Stage =1;

SELECT * FROM Patients 
WHERE Screening ='Yes' AND Stage =2;

SELECT * FROM Patients
WHERE Screening ='Yes' AND Stage =3;

SELECT * FROM Patients 
WHERE Screening ='Yes' AND Stage =4;

SELECT * FROM CancerTypes;

SELECT ID, CancerType, Outcome
FROM Patients
JOIN CancerTypes ON Patients.CancerTypeID = CancerTypes.CancerTypeId;

SELECT *
FROM Patients
WHERE CancerTypeId = 2 AND Outcome = 'Survived';


SELECT * FROM Patients;


