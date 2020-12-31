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
	String user = (String)session.getAttribute("username");
	PreparedStatement ps = con.prepareStatement("select * from users where username=?");
	ps.setString(1, user);
	ResultSet fet = ps.executeQuery();
	String u = request.getParameter("name");
	String em = request.getParameter("email");
	String mo = request.getParameter("mobileno");
	String np = "";
	String epass= "";
	if(request.getParameter("c_pass")!=null)
	{
		epass = request.getParameter("c_pass");
		np = request.getParameter("n_pass");
	}
	 ps = con.prepareStatement("UPDATE users set name=? where username=?");
	ps.setString(1, u);
	ps.setString(2, user);
	ps.executeUpdate();
	ps = con.prepareStatement("UPDATE users set email=? where username=?");
	ps.setString(1, em);
	ps.setString(2, user);
	ps.executeUpdate();
	ps = con.prepareStatement("UPDATE users set mobileno=? where username=?");
	ps.setString(1, mo);
	ps.setString(2, user);
	ps.executeUpdate();
	while(fet.next())
	{
		if(epass == fet.getString(4) )
		{
			String npass = np;
			ps = con.prepareStatement("UPDATE users set password=? where username=?");
			ps.setString(1, npass);
			ps.setString(2, user);
			ps.executeUpdate();
			ps = con.prepareStatement("UPDATE login_details set password=? where username=?");
			ps.setString(1, npass);
			ps.setString(2, user);
			ps.executeUpdate();
		}
		else
		{
			String msg="Passwords do not match!!";
			session.setAttribute("perr", msg);
		}
	}
}
%>
</body>
</html>