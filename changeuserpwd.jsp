<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Password</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<%
String old = request.getParameter("old"); 
String newpass = request.getParameter("newpass");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
        "system", "system");
Statement st = con.createStatement();

ResultSet rs;
st.executeUpdate("update customer1 set password='" + newpass + "' where password='" + old + "'");

%>
<center>
	<center><h2><font color=green>Password changed!!!</font></h2></center><br>
	<a href="first.jsp" class="button">Back to home page</a>
</center>
</body>
</html>