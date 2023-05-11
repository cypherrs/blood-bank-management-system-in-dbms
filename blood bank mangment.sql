//donor module:
CREATE TABLE Donor (
  Donor_ID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Age INT,
  Gender VARCHAR(10),
  Blood_Type VARCHAR(5),
  Contact_No VARCHAR(20),
  Address VARCHAR(255),
  Medical_History VARCHAR(255)
);

INSERT INTO Donor VALUES 
  (1, 'John Doe', 25, 'Male', 'O+', '1234567890', '123 Main St, Anytown, USA', 'None'),
  (2, 'Jane Doe', 30, 'Female', 'B+', '9876543210', '456 Elm St, Anytown, USA', 'Asthma'),
  (3, 'Bob Smith', 45, 'Male', 'AB-', '5551234567', '789 Oak St, Anytown, USA', 'High Blood Pressure');

Blood_Inventory:
CREATE TABLE Blood_Inventory (
  Blood_ID INT PRIMARY KEY,
  Blood_Type VARCHAR(5) NOT NULL,
  Quantity INT NOT NULL,
  Expiration_Date DATE NOT NULL,
  Status VARCHAR(10)
);

INSERT INTO Blood_Inventory VALUES 
  (1, 'O+', 50, '2024-05-01', 'Available'),
  (2, 'B+', 20, '2024-06-01', 'Available'),
  (3, 'AB-', 10, '2024-05-01', 'Reserved');


Blood Donation Module:
CREATE TABLE Donation (
  Donation_ID INT PRIMARY KEY,
  Donor_ID INT,
  Donation_Date DATE,
  Blood_Type VARCHAR(5),
  Test_Result VARCHAR(10),
  FOREIGN KEY (Donor_ID) REFERENCES Donor(Donor_ID)
);
INSERT INTO Donation VALUES 
  (1, 1, '2022-04-01', 'O+', 'Negative'),
  (2, 2, '2022-05-01', 'B+', 'Positive'),
  (3, 1, '2022-05-15', 'O+', 'Negative');

Blood Request Module:
CREATE TABLE Request (
  Request_ID INT PRIMARY KEY,
  Hospital_Name VARCHAR(255) NOT NULL,
  Request_Date DATE NOT NULL,
  Blood_Type VARCHAR(5) NOT NULL,
  Quantity INT NOT NULL,
  Urgency VARCHAR(10)
);
INSERT INTO Request VALUES 
  (1, 'St. Mary Hospital', '2022-04-05', 'O+', 5, 'Urgent'),
  (2, 'General Hospital', '2022-05-10', 'B+', 10, 'Routine'),
  (3, 'Children Hospital', '2022-05-15', 'AB-', 3, 'Urgent');

Reporting Module:

CREATE TABLE Report (
  Report_ID INT PRIMARY KEY,
  Report_Name VARCHAR(255) NOT NULL,
  Report_Description VARCHAR(255) NOT NULL,
  Report_Date DATE NOT NULL
);
INSERT INTO Report VALUES 
  (1, 'Donor Report', 'Report on all donors in the system', '2022-05-01'),
  (2, 'Blood Inventory Report', 'Report on all blood inventory in the system', '2022-05-01'),
  (3, 'Request Report', 'Report on all)

adminstration :

CREATE TABLE User (
  User_ID INT PRIMARY KEY,
  User_Name VARCHAR(255) NOT NULL,
  User_Email VARCHAR(255) UNIQUE NOT NULL,
  User_Password VARCHAR(255) NOT NULL,
  User_Role VARCHAR(5) NOT NULL
);
INSERT INTO User (User_ID, User_Name, User_Password, User_Email, User_Role)
VALUES 
  (1, 'admin', 'password', 'admin@example.com', 'Admin'),
  (2, 'staff1', 'password', 'staff1@example.com', 'Staff'),
  (3, 'staff2', 'password', 'staff2@example.com', 'Staff');



