<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login-Soft Cart</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript">
	function myval() {

		var username = form.user.value;
		var pwd = form.passwd.value;

		if (username == null || username == " " || username == "") {
			alert("Please enter your username");
			return false;
		}
		if (pwd == null || pwd == " " || pwd == "") {
			alert("Please enter your password");
			return false;
		}

		return true;
	}
	function noBack() {
		window.history.forward()
	}
	noBack();
	window.onload = noBack;
	window.onpageshow = function(evt) {
		if (evt.persisted)
			noBack()
	}
	window.onunload = function() {
		void (0)
	}
</script>
</head>
<body id="admintext">

	<form name="form" action="ShoppingController" method="post"
		onsubmit="return myval()">

		<br> <br> <br> <br>


		<center>
			<div id="adminpage">
				<h1>Admin Login</h1>
				<table>
					<tr>
						<td>Username:</td>
						<td><input type="text" placeholder="Enter Admin name"
							id="input" name="user" /></td>
						<br>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" placeholder="Enter Password"
							id="input" name="passwd" /></td>
						<br>
					</tr>
				</table>

				<br> <input type="submit" value="Login" id="submit" /><br>
				<br> <br> <input type="hidden" value="adminlogin"
					name="category" />
			</div>
		</center>


	</form>
</body>
</html>