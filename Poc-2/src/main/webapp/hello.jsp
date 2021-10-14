<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource
var="myDb"
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/hotel"
user="maithreyan" password="" />

	<sql:query var="room" dataSource="${myDb}">
	SELECT * FROM room;
	</sql:query>
		<div align="center">
		<table border="1" cellpadding="5">
			<caption><h2>Rooms Available</h2></caption>
		<tr>
		<th>s.no</th>
		<th>room type</th>
		<th>available</th>
		</tr>
	<c:forEach var="r" items="${room.rows}">
		<tr>
			<td><c:out value ="${r.s_no}"/></td>
			<td><c:out value ="${r.room_type}"/></td>
			<td><c:out value="${r.available}"/></td>
		</tr>
	</c:forEach>
</div>
<h1>Hello </h1>
<div align="center">
<form action="connect.jsp" method="post">
<div class="button"><input type="submit" value="Home"/>
</div>
</body>
</html>