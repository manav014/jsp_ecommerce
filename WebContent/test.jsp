<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file = "../backend/database_connection.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	PreparedStatement ps = con.prepareStatement("select * from kidswear where category=?");
	ps.setString(1, "Sweatshirt");
	ResultSet rs1 = ps.executeQuery();
	if(rs1.next()){
	out.print(rs1.getString(6));}
	%>
</body>
</html>