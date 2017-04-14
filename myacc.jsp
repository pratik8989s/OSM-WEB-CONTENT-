<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "system", "system");
		//out.println("connected");
		String Query = "select * from customer1 where cust_name=?";
		PreparedStatement ps = con.prepareStatement(Query);
		ps.clearParameters();
		HttpSession hs = request.getSession();
		String name = (String) hs.getAttribute("uname");
		ps.setString(1, name);
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
	%>
	<center>
		<h2>USER PROFILE</h2>
	</center>
	<center>
		<table border=1>
			<tr>
				<th>Customer_id</th>
				<th>Customer_name</th>
				<th>Customer_addr</th>
				<th>Customer_phone</th>
				<th>Email_id</th>
				<th>Password</th>
			</tr>
			<tr>
				<%
					while (rs.next()) {
						for (int i = 1; i <= rsmd.getColumnCount(); i++) {
				%>
				<td><%=rs.getString(i)%></td>
				<%
					}
					}
				%>
			</tr>

		</table>

		<br>
		<br><form action="first.jsp">
		<input type="submit" value="Back to home page">
		</form>
	</center>

</body>
</html>