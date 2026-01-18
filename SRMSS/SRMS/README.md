# Student Record Management System (SRMS)
Language & Platform: Java, JSP, Servlet, MySQL, HTML, CSS, JavaScript

## Overview
A simple Java web application that demonstrates CRUD operations for student records
using JSP/Servlets and MySQL. Intended for academic/demo use and as a starter project
for a 6-member team.

## Project Structure
- src/ (Java source files)
- WebContent/ (JSP, HTML, CSS, JS)
- WEB-INF/web.xml (servlet mapping)
- sql/srms.sql (database schema + sample data)
- build.xml or use your IDE (Eclipse/IntelliJ) to run as a Dynamic Web Project

## How to run
1. Create MySQL database and run `sql/srms.sql` to create the `students` table.
2. Update DB credentials in `src/utils/DBConnection.java`.
3. Build and deploy as a WAR in Apache Tomcat (tested on Tomcat 9+).
4. Access: `http://localhost:8080/SRMS/`

## Notes
- This project is a simple educational example and lacks production features
  like authentication, prepared-statement reuse pooling, and CSRF protection.
