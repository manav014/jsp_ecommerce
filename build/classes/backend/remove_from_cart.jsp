<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     

if(session.getAttribute("username")==null || request.getParameter("productId")==null)
	response.sendRedirect("../login.jsp");
else
{
	String u = (String)session.getAttribute("username");
	String pid = request.getParameter("pid");
	PreparedStatement ps = con.prepareStatement("DELETE from cart where username = ? and productId = ? ");
	ps.setString(1, u);
	ps.setString(2, pid);
	ps.executeUpdate();
	response.sendRedirect("../cart.jsp");
}

%>
</body>
</html>