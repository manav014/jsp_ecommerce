<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@ include file = "database_connection.jsp" %>
<%@page import="java.sql.*"%>
<%     
String page_redirect="";
if(session.getAttribute("username")==null)
{
	page_redirect = "../login.jsp";
}
else
{
	String pid="safd";
	if(request.getParameter("Cart")!=null)
	{
		pid = request.getParameter("pid");
	}
	else
	{
		pid = request.getParameter("pid");
	}
	String u = (String)session.getAttribute("username");
	String quantity = request.getParameter("quantity");
	String size = request.getParameter("size");
	pid = pid.substring(0,pid.length()-1)+size;
	String temp = pid;
	String table="";
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
	PreparedStatement ps = con.prepareStatement("SELECT * FROM "+table+" WHERE productId=?");
	ps.setString(1, pid);
	ResultSet rs = ps.executeQuery();
	String price ="";
	if(rs.next())
	{
		price = rs.getString(4);
	}
	ps = con.prepareStatement("SELECT * FROM cart where username = ? and productId = ? ");
	ps.setString(1, u);
	ps.setString(2, pid);
	ResultSet rs1= ps.executeQuery();
	if(rs1.next())
	{
		int a = Integer.parseInt(rs1.getString(4));
		int new_quantity = a + Integer.parseInt(quantity);
		int new_price = new_quantity * Integer.parseInt(price);
		 
		ps = con.prepareStatement("UPDATE cart SET quantity = ?, total_price = ? where username = ? and productId = ?");
		ps.setInt(1, new_quantity);
		ps.setInt(2, new_price);
		ps.setString(3, u);
		ps.setString(4, pid);
		ps.executeUpdate();
	}
	else {
		int total_price = Integer.parseInt(quantity) * Integer.parseInt(price);
		ps = con.prepareStatement("INSERT INTO cart(username, productId, quantity, total_price) values(?, ?, ?, ?)");
		ps.setString(1, u);
		ps.setString(2, pid);
		ps.setString(3, quantity);
		ps.setInt(4, total_price);
		ps.executeUpdate();
	}
}

if(session.getAttribute("Cart")!=null) {
	page_redirect = "../homepage.jsp";
}
else {
	page_redirect="../cart.jsp";
}
response.sendRedirect(page_redirect);
%>
</body>
</html>
