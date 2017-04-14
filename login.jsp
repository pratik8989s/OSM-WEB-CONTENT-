<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Soft cart</title>

<link rel="stylesheet" type="text/css" href="common.css">

<script type="text/javascript">
	function validate() {
		var user;
		var pwd;

		user = loginform.user.value;
		pass = loginform.pwd.value;

		if (user == null || user == "" || user == " ") {
			alert("Please Enter your username...");
			return false;
		}

		if (pass == null || pass == "" || pass == " ") {
			alert("Please enter your password...");
			return false;
		}
		if (user == null && pass == null) {
			alert("provide your credentials...");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<center>
		<h1>
			User Login
		</h1>
	</center>
	<form name="loginform" action="ShoppingController" method="post"
		onsubmit="return validate()">

		<center>
			<div id="Login">
				<br> <br> Username: <input required type="text"
					placeholder="Enter Username" id="input" name="user" style="height: 42px; width: 278px; "><br>
				<br> Password: <input required type="PASSWORD"
					placeholder="Enter Password" id="input" name="pwd" style="width: 274px; height: 41px"><br>
					
				<br> <input type="submit" value="Login" class="button"
					id="submit" ><br> <br> <br> <input
					type="hidden" value="login" name="category" /> <br> 
					Don't have any Account? <a href="signup.jsp">Create new account</a>
			</div>
		</center>
	</form>
</body>
</html>