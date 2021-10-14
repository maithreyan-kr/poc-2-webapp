<%@ page import="java.sql.*"%>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String phoneNumber = request.getParameter("phoneNumber");
String dateOfBirth = request.getParameter("dateOfBirth");
String username = request.getParameter("userName");
String password = request.getParameter("Password");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","maithreyan","");
	PreparedStatement ps = con.prepareStatement("insert into registration(first_name, last_name, ph_number, d_o_b, username, pass) values(?,?,?,?,?,?)");
	ps.setString(1, firstName);
	ps.setString(2, lastName);
	ps.setString(3, phoneNumber);
	ps.setString(4, dateOfBirth);
	ps.setString(5, username);
	ps.setString(6, password);
	int x = ps.executeUpdate();
	if(x>0){
		out.println("registered successfully...");
	}else {
		out.println("registration failed...");
	}
	
}catch(Exception e){
	out.println(e);
}

%>
<html>
<body>
<form action="home.html" method="post">
<input type="submit" value="Home">
</form>
</body>
</html>