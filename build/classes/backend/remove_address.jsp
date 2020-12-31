<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     

if(session.getAttribute("username")==null || request.getParameter("remove")==null)
	response.sendRedirect("../homepage.jsp");
else
{
	String sr = request.getParameter("remove");
	PreparedStatement ps = con.prepareStatement("DELETE from address where sr_no = ?");
	ps.setString(1, sr);
	ps.executeUpdate();
	response.sendRedirect("../select_address.jsp");
}

%>
</body>
</html>