<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%
if(request.getParameter("del")!=null)
{
	String ud = request.getParameter("id");
	try{   
	    PreparedStatement ps=con.prepareStatement("select * from users where username=?");  
	    ps.setString(1,ud); 
	    ResultSet rs = ps.executeQuery();  
	    int count=0;
	    while(rs.next())
	    {
	    	try{   
	    	    PreparedStatement ps1=con.prepareStatement("delete from users where username=?");  
	    	    ps1.setString(1,ud); 
	    	    int status = ps1.executeUpdate();
	    	}
	    	catch(Exception e){System.out.println(e);}  
	    	String msg="User has been removed";
	    	session.setAttribute("crrm", msg);
	    	count++;
	    }
	    if(count==0)
	    {
	    	String msg="Username Invalid";
	    	session.setAttribute("errm", msg);
	    	response.sendRedirect("../admin_profile.jsp");
	    }
	}catch(Exception e){System.out.println(e);}  
	try{   
	    PreparedStatement ps=con.prepareStatement("select * from login_details where username=?");  
	    ps.setString(1,ud); 
	    ResultSet rs = ps.executeQuery();  
	    int count=0;
	    while(rs.next())
	    {
	    	try{   
	    	    PreparedStatement ps1=con.prepareStatement("delete from login_details where username=?");  
	    	    ps1.setString(1,ud); 
	    	    int status = ps1.executeUpdate();
	    	}
	    	catch(Exception e){System.out.println(e);}  
	    }
	}catch(Exception e){System.out.println(e);} 
	
	try{   
	    PreparedStatement ps=con.prepareStatement("select * from address where username=?");  
	    ps.setString(1,ud); 
	    ResultSet rs = ps.executeQuery();  
	    int count=0;
	    while(rs.next())
	    {
	    	try{   
	    	    PreparedStatement ps1=con.prepareStatement("delete from address where username=?");  
	    	    ps1.setString(1,ud); 
	    	    int status = ps1.executeUpdate();
	    	}
	    	catch(Exception e){System.out.println(e);}  
	    }
	}catch(Exception e){System.out.println(e); 	}
	
	try{   
	    PreparedStatement ps=con.prepareStatement("select * from orders_log where username=?");  
	    ps.setString(1,ud); 
	    ResultSet rs = ps.executeQuery();  
	    int count=0;
	    while(rs.next())
	    {
	    	try{   
	    	    PreparedStatement ps1=con.prepareStatement("delete from orders_log where username=?");  
	    	    ps1.setString(1,ud); 
	    	    int status = ps1.executeUpdate();
	    	}
	    	catch(Exception e){System.out.println(e);}  
	    }
	}catch(Exception e){System.out.println(e); 	}
	
	try{   
	    PreparedStatement ps=con.prepareStatement("select * from transaction where username=?");  
	    ps.setString(1,ud); 
	    ResultSet rs = ps.executeQuery();  
	    int count=0;
	    while(rs.next())
	    {
	    	try{   
	    	    PreparedStatement ps1=con.prepareStatement("delete from transaction where username=?");  
	    	    ps1.setString(1,ud); 
	    	    int status = ps1.executeUpdate();
	    	}
	    	catch(Exception e){System.out.println(e);}  
	    }
	}catch(Exception e){System.out.println(e); 	}
	response.sendRedirect("../admin_profile.jsp");
}


%>
</body>
</html>