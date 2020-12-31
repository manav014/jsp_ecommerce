<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%     
Connection con=null;
try{
        String dbUrl = "jdbc:mysql://localhost:3306/ecommerce";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con=DriverManager.getConnection(dbUrl,"root","");              
        System.out.println("Connection established for SQL");
    }
catch(Exception e){
        System.out.println("Database connection exception= "+e);}
try{   
    PreparedStatement ps=con.prepareStatement("insert into login_details values(?,?)");  
    ps.setString(1,"hello");  
    ps.setString(2,"hey");   
    int status=ps.executeUpdate();  
}catch(Exception e){System.out.println(e);}  
%>
</body>
</html>