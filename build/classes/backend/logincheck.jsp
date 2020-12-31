<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     
	if(request.getParameter("checkl")==null)
		response.sendRedirect("../login.jsp");
	String u = request.getParameter("username");
	String p = request.getParameter("password");
	
	//To ask from PTS
// 	$ep = md5($p);
// 	$sql_l = "SELECT * FROM login_details WHERE username='$u' and password='$ep'";
// 	$res_u = $con->query($sql_l);
// 	if(mysqli_num_rows($res_u) > 0) 
// 	{
// 		$_SESSION['username']=$u;
// 		header("location:../homepage.php");
// 	}
// 	else
// 	{
// 		$msg="Username or password is Invalid";
// 		$_SESSION['error']=$msg;
// 		header("location:../login.php");
// 	}
	try{   
	    PreparedStatement ps=con.prepareStatement("SELECT * FROM login_details WHERE username=? and password=?");  
	    ps.setString(1,u);  
	    ps.setString(2,p);   
	   ResultSet rs =ps.executeQuery();  
	   while(rs.next())
	   {
			session.setAttribute("username",u);
			response.sendRedirect("../homepage.jsp");
	   }
	   String msg="Username or password is Invalid";
		session.setAttribute("error", msg);
		response.sendRedirect("../login.php");
		
	}catch(Exception e){System.out.println(e);}  
%>
</body>
</html>