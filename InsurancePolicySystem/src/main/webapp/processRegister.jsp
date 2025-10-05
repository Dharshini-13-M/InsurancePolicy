<%@ page import="java.sql.*, java.util.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    int age = Integer.parseInt(request.getParameter("age"));
    String employed = request.getParameter("employed");
    String gender = request.getParameter("gender");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance_db", "root", "Password"); // Update with your DB credentials
        PreparedStatement ps = con.prepareStatement("INSERT INTO users (name, email, phone, age, employed, gender) VALUES (?, ?, ?, ?, ?, ?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setInt(4, age);
        ps.setString(5, employed);
        ps.setString(6, gender);
        ps.executeUpdate(); 
        if (age >= 18) {
            response.sendRedirect("policySelection.jsp");
        } else {
            response.sendRedirect("underage.jsp");
        }
        ps.close();
        con.close();
    } 
    catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    }
%>
