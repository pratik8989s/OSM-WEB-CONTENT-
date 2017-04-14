<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title> Admin Password change</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body id="pdchange">
	<%
String old = request.getParameter("old"); 
String newpass = request.getParameter("newpass");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
        "system", "system");
Statement st = con.createStatement();

ResultSet rs;
st.executeUpdate("update admin set password='" + newpass + "' where password='" + old + "'");

%>
<br><br><br>
	<center><p id="pdchangea"><h2><font color=green>Password changed Successfully!!!!</font></h2></p></center>
<br><br><br>
	<center><a id="pdchangep" class="button" href="adminpage.jsp">Back to Admin page</a></center>
</body>
</html>