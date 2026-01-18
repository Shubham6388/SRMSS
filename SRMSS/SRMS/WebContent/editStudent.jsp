<%@ page import="model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  Student s = (Student) request.getAttribute("student");
  if (s == null) {
    response.sendRedirect("students");
    return;
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Student - SRMS</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container form">
    <h2>Edit Student</h2>
    <form action="student" method="post">
      <input type="hidden" name="action" value="update" />
      <input type="hidden" name="id" value="<%=s.getId()%>" />
      <label>Roll No:</label><input type="text" name="roll_no" value="<%=s.getRollNo()%>" required /><br/>
      <label>Name:</label><input type="text" name="name" value="<%=s.getName()%>" required /><br/>
      <label>Email:</label><input type="email" name="email" value="<%=s.getEmail()%>" /><br/>
      <label>Course:</label><input type="text" name="course" value="<%=s.getCourse()%>" /><br/>
      <label>Year:</label><input type="number" name="year" min="1" max="6" value="<%=s.getYear()%>" /><br/>
      <button type="submit">Update Student</button>
    </form>
    <p><a href="students">Back to list</a></p>
  </div>
</body>
</html>
