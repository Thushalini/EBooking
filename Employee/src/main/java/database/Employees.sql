CREATE TABLE Employees (
    employeeID INT IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phoneNumber VARCHAR(15),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255)
);

select * from Employees;