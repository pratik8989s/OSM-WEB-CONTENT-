<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order details</title>
<script type="text/javascript">
	function validateorder() {
		var pid;
		var radios;
		

		pid = orderform.pid.value;
		

		if (pid == null || pid == "" || pid == " ") {
			alert("Please Enter your product id...");
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

<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<center>
		<h2>
			<font color=green>Place Your Order</font>
		</h2>
	</center>
	<form name="orderform" action="ShoppingController" method="post" onsubmit="return validateorder()">
		<center>
			<div id="Login">
				<br> <br> 
				<table>
				<br>
				<tr>
				<td>Product Id:</td>
				<td><input type="text" size="35" placeholder="Enter Product Id" id="input" name="pid"></td>
				</tr>
				<br>
				<tr>
				<td>Product Status:</td>
				<td><input type="text" size="35" placeholder="Enter Status" id="input" value="Available" name="status"></td>
				</tr>
				</table>
				<br>
				Select Payment mode:<br> 
				Net Banking
				<INPUT TYPE="radio" NAME="radios" VALUE="netbank" required="required" checked="checked" ><br> 
				
				Cash on delivery
				<input TYPE="radio" NAME="radios" VALUE="cod" required="required"><br> 
				<input type="submit" class="button" value="Proceed" id="submit"><br> <br> <br>
				<input type="hidden" value="pay" name="category" />

			</div>
		</center>
	</form>
</body>
</html>