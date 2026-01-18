<%@ page import="java.util.List" %>
<%@ page import="model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  List<Student> students = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>All Students - SRMS</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container">
    <h2>All Students</h2>
    <p><a href="addStudent.jsp">Add New Student</a></p>
    <table class="students">
      <thead>
        <tr><th>ID</th><th>Roll No</th><th>Name</th><th>Email</th><th>Course</th><th>Year</th><th>Actions</th></tr>
      </thead>
      <tbody>
      <% if (students != null) {
           for (Student s : students) { %>
             <tr>
               <td><%= s.getId() %></td>
               <td><%= s.getRollNo() %></td>
               <td><%= s.getName() %></td>
               <td><%= s.getEmail() %></td>
               <td><%= s.getCourse() %></td>
               <td><%= s.getYear() %></td>
               <td>
                 <a href="student?action=edit&id=<%=s.getId()%>">Edit</a> |
                 <a href="student?action=delete&id=<%=s.getId()%>" onclick="return confirm('Delete this student?');">Delete</a>
               </td>
             </tr>
      <%     }
         } else { %>
         <tr><td colspan="7">No records found</td></tr>
      <% } %>
      </tbody>
    </table>
    <p><a href="index.jsp">Home</a></p>
  </div>
</body>
</html>
