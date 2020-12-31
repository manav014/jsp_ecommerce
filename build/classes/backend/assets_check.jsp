<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- TODO Change the file uploading method from php to jsp everywhere where assets_check and asset_remove is used -->
<body>
<%@page import="java.sql.*"%>
<%  
//---------------------------------------------------from value----------------------------------
String c = request.getParameter("catg");
String n = request.getParameter("n");
String sc = request.getParameter("subcat");
String pi = request.getParameter("pi");
String f = request.getParameter("file");
String p = request.getParameter("price");
String s = request.getParameter("size");
String d = request.getParameter("des");

//---------------------------------------Extracting file type---------------------------------------
//doubt and no change in php code 
$fname= $f['name'];
$fext =explode('.',$fname);
$ftype =strtolower(end($fext));

$reqtype= array('jpeg', 'jpg' , 'png');

if(in_array($ftype,$reqtype))
{
	$fileurl = 'assets/'.$fname;
	move_uploaded_file($f['tmp_name'],'../'.$fileurl);
}	
//doubtend

//-----------------------------------------database connect------------------------------------------
Connection con=null;
try{
        String dbUrl = "jdbc:mysql://localhost:3306/ecommerce";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con=DriverManager.getConnection(dbUrl,"root","");              
        System.out.println("Connection established for SQL");
    }
catch(Exception e){
        System.out.println("Database connection exception= "+e);}
try{   
    PreparedStatement ps=con.prepareStatement("insert into ? values(?,?,?,?,?,?,?)");  
    ps.setString(1,c);  
	ps.setString(2,pi);
	ps.setString(3,fileurl);
	ps.setString(4,n);
	ps.setString(5,p);
	ps.setString(6,s);
	ps.setString(7,d);
	ps.setString(8,sc);
    int status=ps.executeUpdate();  
}catch(Exception e){System.out.println(e);}  
%>
</body>
</html>