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
		String Query = "select p.product_id ,p.product_price ,o.order_id ,o.order_date,o.payment_mode from product1 p,order_details o where p.product_id=o.category_id";
		PreparedStatement ps = con.prepareStatement(Query);
		ps.clearParameters();
		HttpSession hs = request.getSession();
		String name = (String) hs.getAttribute("uname");
		//ps.setString(1, name);
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
	%>
	<center>
		<h2>Products</h2>
	</center>
	<center>
		<table border=1>
			<tr>
				<th>Product id</th>
				<th>Product price</th>
				<th>Order id</th>
				<th>Order date</th>
				<th>payment mode</th>
				
			</tr>
				<%
					while (rs.next()) {%>
					<tr>
						<%
						for (int i = 1; i <=(rsmd.getColumnCount()); i++) {
				%>
				<td><%=rs.getString(i)%></td>
				<%
					}%>
					</tr>
					<%}
				%>
		</table>


		<a href="adminpage.jsp" class="button">Back to Admin page</a>
	</center>

</body>
</html>