<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Core examples</title>
<link rel="stylesheet" type="text/css" href="/06-jstl1/styles.css">
</head>
<body>
	<h1>JSTL - sql examples</h1>
	<sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3305/ted" user="root" password="admin" />
	<sql:query dataSource="${dataSource}" var="products">
		SELECT * from producto;
	</sql:query>
	<table>
		<tr>
			<c:forEach var="column" items="${products.columnNames}">
				<th><c:out value="${column}" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${products.rows}">
			<tr>
				<td><c:out value="${row.idproducto}" /></td>
				<td><c:out value="${row.nombre}" /></td>
				<td><c:out value="${row.precio}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
