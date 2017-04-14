<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Soft Cart</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
<%@ include file="userheader.jsp"%>
<form action="ShoppingController">
		<input type="hidden"
			value="logout" name="category">

</form>
	<%
	HttpSession hs=request.getSession();
	String name=request.getParameter("user");
	hs.setAttribute("uname", name);
	 %>

	<div>
<center><h1><font color=green>WELCOME TO SOFTCART</font></h1></center>
<p>


</p>
	</div>
</body>
</html>