<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Product-Soft Cart</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<form action="ShoppingController" method="post">
		<center>
			<div id="pd">
				  <h2><font color=red>Update Products</font></h2><br>
				<br>
			</div>
		</center>
		<center>
			<div id="pd">
				<table cellspacing="5">
					<tr>
						<td><font color=red>Product Id:</font></td>
						<br>
						<td><input type="text" name="id" id="pid" size="35" /><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Product Name:</font></td>
						<br>
						<td><input type="text" name="name" size="35" id="name" /><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Product Category:</font></td>
						<td><input type="text" name="prodcategory" size="35" /><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Product Status:</font></td>
						<td><input type="text" name="status" id="status" size="35"><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Product Price:</font></td>
						<td><input type="number" name="price" size="35" id="price" /><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Product Description:</font></td>
						<td><textarea name="pdesc" rows="5" size="35"></textarea><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Admin Id:</font></td>
						<td><input type="text" name="adminid" id="admminid" size="35"><br>
						<br></td>
					</tr>
					<tr>
						<td><font color=red>Category Id:<color></td>
						<td><input type="number" name="catid" size="35" id="catid" /><br>
						<br></td>
					</tr>
				</table>
			</div>
		</center>
		<center>
			<input type="submit" class="button" value="Update" id="submit" style="width: 295px; ">
		</center>
		<input type="hidden" value="update" name="category" />
	</form>
</body>
</html>