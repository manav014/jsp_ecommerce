<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@ include file = "database_connection.jsp" %>
<%@page import="java.sql.*"%>
<%     

if(session.getAttribute("username")==null)
{
	response.sendRedirect("../login.jsp");
}
else
{
	String pid;
	if(request.getParameter("cart")!=null)
	{
		pid = request.getParameter("cart");
	}
	else
	{
		pid = request.getParameter("Buy");
	}
	String u = (String)session.getAttribute("username");
	String quantity = request.getParameter("quantity");
	String size = request.getParameter("size");
	pid = pid.substring(0,pid.length()-1)+size;
	String temp = pid;
	String table;
	if(temp.indexOf("ww")!=-1)
	{
		table = "womenwear";
	}
	else if(temp.indexOf("mw")!=-1)
	{
		table = "menwear";
	}
	else if(temp.indexOf("wfw")!=-1)
	{
		table = "womenfootwear";
	}
	else if(temp.indexOf("mfw")!=-1)
	{
		table = "menfootwear";
	}
	else if(temp.indexOf("kw")!=-1)
	{
		table = "kidswear";
	}
}








try{   
    PreparedStatement ps=con.prepareStatement("insert into login_details values(?,?)");  
    ps.setString(1,"hello");  
    ps.setString(2,"hey");   
    int status=ps.executeUpdate();  
}catch(Exception e){System.out.println(e);}  
%>
</body>
</html>
