<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     
String red_page="";

if(request.getParameter("checkreg")==null)
	red_page = "../signin.jsp";
else
{
	String sr = request.getParameter("remove");
	PreparedStatement ps = con.prepareStatement("DELETE from address where sr_no = ?");
	ps.setString(1, sr);
	ps.executeUpdate();
	red_page="../select_address.jsp";	
	String n = request.getParameter("name");
	String u = request.getParameter("username");
	String e = request.getParameter("email");
	String m = request.getParameter("mobileno");
	String ep = request.getParameter("password");
	ps = con.prepareStatement("SELECT * FROM users WHERE username=?");
	ps.setString(1, u);
	java.sql.ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		String msg="Username already taken!!";
		session.setAttribute("err", msg);
		red_page ="../signin.jsp";
	}
	else
	{
	ps = con.prepareStatement("insert into users(name,username,email,mobileno,password) values(?,?,?,?,?)");
	ps.setString(1, n);
	ps.setString(2, u);
	ps.setString(3, e);
	ps.setString(4, m);
	ps.setString(5, ep);
	int status = ps.executeUpdate();
	if(status>0)
	{
		ps = con.prepareStatement("insert into login_details(username,password) values(?,?)");
		ps.setString(1, u);
		ps.setString(2, ep);
		ps.executeUpdate();
		session.setAttribute("username", u);
		red_page = "../homepage.jsp";
	}
	else
	{
		System.out.print("Insertion Failed");
	}
	}
}
response.sendRedirect(red_page);

%>
</body>
</html>
