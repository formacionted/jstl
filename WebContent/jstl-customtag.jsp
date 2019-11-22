<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="WEB-INF/hello-world.tld" prefix="hello" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Custom tag example</title>
</head>
<body>

<hello:customtag1 /><br/>
<hello:customtag1 name="Pepe"/>

</body>
</html>
