package model;

public class Student {
    private int id;
    private String rollNo;
    private String name;
    private String email;
    private String course;
    private int year;

    public Student() {}

    public Student(int id, String rollNo, String name, String email, String course, int year) {
        this.id = id; this.rollNo = rollNo; this.name = name; this.email = email; this.course = course; this.year = year;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getRollNo() { return rollNo; }
    public void setRollNo(String rollNo) { this.rollNo = rollNo; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getCourse() { return course; }
    public void setCourse(String course) { this.course = course; }

    public int getYear() { return year; }
    public void setYear(int year) { this.year = year; }
}
