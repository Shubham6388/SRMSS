<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Student - SRMS</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container form">
    <h2>Add New Student</h2>
    <form action="student" method="post">
      <input type="hidden" name="action" value="create" />
      <label>Roll No:</label><input type="text" name="roll_no" required /><br/>
      <label>Name:</label><input type="text" name="name" required /><br/>
      <label>Email:</label><input type="email" name="email" /><br/>
      <label>Course:</label><input type="text" name="course" /><br/>
      <label>Year:</label><input type="number" name="year" min="1" max="6" /><br/>
      <button type="submit">Add Student</button>
    </form>
    <p><a href="students">Back to list</a></p>
  </div>
</body>
</html>
