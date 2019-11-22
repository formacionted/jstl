<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>JSTL Internalización</title>
</head> 	
<body>
	<fmt:setLocale value="${param.localizacion}" />
	<fmt:setBundle basename="language" var="language" />
	<h1>
		El idioma localizado:
		<c:out value="${pageContext.request.locale.language}" />
	</h1>
	<h2>El parámetro de la petición: ${param.localizacion}</h2>
	<h3>
		<fmt:message key="home.welcome.title" bundle="${language}" />
		<br />
	</h3>
</body>
</html>