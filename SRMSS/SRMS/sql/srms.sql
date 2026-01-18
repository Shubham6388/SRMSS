-- MySQL schema for SRMS
CREATE DATABASE IF NOT EXISTS srms;
USE srms;

CREATE TABLE IF NOT EXISTS students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  roll_no VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  course VARCHAR(100),
  year INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- sample data
INSERT INTO students (roll_no, name, email, course, year) VALUES
('R001','Alice Kumar','alice@example.com','BSc Computer Science',2),
('R002','Rahul Sharma','rahul@example.com','BCom',1);
