package servlets;

import dao.StudentDAO;
import model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = {"/student","/students"})
public class StudentServlet extends HttpServlet {
    private StudentDAO dao = new StudentDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action"); 
        try {
            if ("edit".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                Student s = dao.findById(id);
                req.setAttribute("student", s);
                req.getRequestDispatcher("editStudent.jsp").forward(req, resp);
                return;
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                dao.delete(id);
                resp.sendRedirect(req.getContextPath() + "/students");
                return;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }

        // default: list all
        try {
            List<Student> students = dao.getAll();
            req.setAttribute("students", students);
            req.getRequestDispatcher("listStudents.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action"); 
        try {
            if ("create".equals(action)) {
                Student s = new Student();
                s.setRollNo(req.getParameter("roll_no"));
                s.setName(req.getParameter("name"));
                s.setEmail(req.getParameter("email"));
                s.setCourse(req.getParameter("course"));
                String yearStr = req.getParameter("year"); int year = yearStr != null && !yearStr.isEmpty() ? Integer.parseInt(yearStr) : 0;
                s.setYear(year);
                dao.create(s);
                resp.sendRedirect(req.getContextPath() + "/students");
                return;
            } else if ("update".equals(action)) {
                Student s = new Student();
                s.setId(Integer.parseInt(req.getParameter("id")));
                s.setRollNo(req.getParameter("roll_no"));
                s.setName(req.getParameter("name"));
                s.setEmail(req.getParameter("email"));
                s.setCourse(req.getParameter("course"));
                String yearStr = req.getParameter("year"); int year = yearStr != null && !yearStr.isEmpty() ? Integer.parseInt(yearStr) : 0;
                s.setYear(year);
                dao.update(s);
                resp.sendRedirect(req.getContextPath() + "/students");
                return;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
        resp.sendRedirect(req.getContextPath() + "/students");
    }
}
