-- Create one database for the school
CREATE DATABASE School;
-- Use the database
USE School;

-- Create tables inside the School database
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    age INT,
    class VARCHAR(20)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    subject VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE SchoolFees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

CREATE TABLE TeachersSalary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Assessment (
    assessment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
