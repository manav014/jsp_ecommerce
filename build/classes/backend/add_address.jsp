
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     
if(session.getAttribute("username")==null || request.getParameter("add")==null)
{
	response.sendRedirect("../homepage.jsp");
}
else
{
	String u = (String)session.getAttribute("username");
	String n = request.getParameter("name");
	String m = request.getParameter("mobileno");
	String p = request.getParameter("pincode");
	String l = request.getParameter("locality");
	String a = request.getParameter("address");
	String c = request.getParameter("city");
	String s = request.getParameter("state");
	try{   
	PreparedStatement ps=con.prepareStatement("INSERT into address(username, name, mobileno, pincode, locality, address, city, state) values(?, ?, ?, ?, ?, ?, ?, ?)");  
	ps.setString(1,u);  
	ps.setString(2,n);
	ps.setString(3,m);
	ps.setString(4,p);
	ps.setString(5,l);
	ps.setString(6,a);
	ps.setString(7,c);
	ps.setString(8,s);
	int status=ps.executeUpdate();  
	response.sendRedirect("../select_address.jsp");

	}catch(Exception e){System.out.println(e);}  
}
%>
</body>
</html>