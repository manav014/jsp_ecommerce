<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     

if(session.getAttribute("username")==null || request.getParameter("proceed_to_payment")==null)
	response.sendRedirect("../homepage.jsp");
else
{
	String u = (String)session.getAttribute("username");
	String status = "Success";
	PreparedStatement ps=con.prepareStatement("SELECT SUM(total_price) AS total from cart where username = ?");  
	ps.setString(1,u);
	ResultSet rs =ps.executeQuery();
	String amount="";
	while(rs.next())
	{
		amount = rs.getString("total");
	}
	String date_now;
	long d = System.currentTimeMillis();
	Date date = new Date(d);
	ps = con.prepareStatement("INSERT into transaction(username, amount, date, status) values(?, ?, ?, ?)");
	ps.setString(2, amount);
	ps.setString(1, u);
	ps.setDate(3, date);
	ps.setString(4, status);
	int status_code = ps.executeUpdate();
	ps = con.prepareStatement("SELECT * from cart where username = ?");
	ps.setString(1, u);
	rs = ps.executeQuery();
	while(rs.next())
	{
		String pid = (String)rs.getString(2);
		String quantity = rs.getString(3);
		ps = con.prepareStatement("INSERT into orders_log(username, productId, quantity, date) values(?, ?, ?, ?)");
		ps.setString(1, u);
		ps.setString(2, pid);
		ps.setString(3, quantity);
		ps.setDate(4, date);
		status_code = ps.executeUpdate();
		ps = con.prepareStatement("DELETE from cart where username = ? and productId = ? ");
		ps.setString(1, u);
		ps.setString(2, pid);
		status_code = ps.executeUpdate();
		
	}
	response.sendRedirect("../congratulate.jsp");
	
	
	
}
%>
</body>
</html>