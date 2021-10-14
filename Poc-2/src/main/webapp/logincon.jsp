<html>
<body>
<%@ page import = "java.sql.*"%>
<%@ page import= "javax.sql.*"%>
<%
	String username=request.getParameter("username");
	session.putValue("username", username);
	String password=request.getParameter("pass");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","maithreyan","");
	Statement s = c.createStatement();
	ResultSet r = s.executeQuery("select * from registration where username= " + username );
	String m ="${username}";
	if(r.next())
	{
	if( (r.getString(5).equals(username))&&(r.getString(6).equals(password)))
	{
	out.println("welcome" + m + java.util.Calendar.getInstance().getTime());
	}
	else 
	{
	out.println("Invalid password try again");
			
	}
	
	}
	RequestDispatcher rd= request.getRequestDispatcher("hello.jsp");
	rd.forward(request, response);
	%>
	