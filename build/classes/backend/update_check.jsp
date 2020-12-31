

<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*"%>
<%@ include file = "database_connection.jsp" %>
<%     

if(request.getParameter("asset_update")==null)
	System.out.println("Failed");
else
{
	String i=request.getParameter("id");
	String temp = " " + i;
	String table="";
	if(temp.contains("ww"))
		table = "womenwear";
	else if(temp.contains("mw"))
		table = "menwear";
	else if(temp.contains("wfw"))
		table = "womenfootwear";
	else if(temp.contains("mfw"))
		table = "menfootwear";
	else if(temp.contains("kw"))
		table = "kidswear";
	else
	    System.out.println("Wrong Input");
	String nu=request.getParameter("n");
/* 	Map<String,String> fu=request.getParameterMap("file"); */
	String pu=request.getParameter("price");
	String a=request.getParameter("address");
	String su=request.getParameter("size");
	String du=request.getParameter("des");


	/* $fname= $fu['name'];
	$fext =explode('.',$fname);
	$ftype =strtolower(end($fext));
 */
/* 	$reqtype= array('jpeg', 'jpg' , 'png');

	if(in_array($ftype,$reqtype))
	{
		$fileurl = 'assets/'.$fname;
		move_uploaded_file($fu['tmp_name'],'../'.$fileurl);
	}
 */

/* 		PreparedStatement ps = con.prepareStatement("select * from ? where productId=?");
		ps.setString(1, table);
		ps.setString(2, i);
		rs = ps.executeQuery();
		while(rs.next())
		{ */
		/*unlink('../'.$arr[1]); */
/* 	$up="UPDATE $table set image='$fileurl' where productId='$i'";
	$con->query($up); */
	PreparedStatement ps = con.prepareStatement("UPDATE ? set name=? where productId=?");
	ps.setString(1, table);
	ps.setString(2, nu);
	ps.setString(3, i);
	int status = ps.executeUpdate();
	ps = con.prepareStatement("UPDATE ? set price=? where productId=?");
	ps.setString(1, table);
	ps.setString(2, pu);
	ps.setString(3, i);
	status = ps.executeUpdate();
	ps = con.prepareStatement("UPDATE ? set size=? where productId=?");
	ps.setString(1, table);
	ps.setString(2, su);
	ps.setString(3, i);
	status = ps.executeUpdate();
	ps = con.prepareStatement("UPDATE ? set description=? where productId=?");
	ps.setString(1, table);
	ps.setString(2, du);
	ps.setString(3, i);
	status = ps.executeUpdate();
	session.setAttribute("tab", table);
	response.sendRedirect("../show_assets.jsp");
}

%>
</body>
</html>