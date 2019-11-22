<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib
	prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><!DOCTYPE html >
<html>
<head>
<title>Ejemplo Tag fmt:formatNumber</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
</head>
<body>

<h1>JSTL - Fmt Examples</h1>

	<fmt:setLocale value="es_ES" />
	<h3>Numero a formatear:</h3>
	<c:set var="cantidad" value="1200000.239" /> <c:out value="${cantidad}"></c:out>
	<p>
		Numero Formateado (1):
		<fmt:formatNumber value="${cantidad}" type="currency" />
	</p>
	<p>
		Numero Formateado (2):
		<fmt:formatNumber type="number" maxIntegerDigits="3"
			value="${cantidad}" />
	</p>
	<p>
		Numero Formateado (3):
		<fmt:formatNumber type="number" maxFractionDigits="2"
			value="${cantidad}" />
	</p>
	<p>
		Numero Formateado (4):
		<fmt:formatNumber type="number" groupingUsed="false"
			value="${cantidad}" />
	</p>
	<p>
		Numero Formateado (5):
		<fmt:formatNumber type="percent" maxIntegerDigits="3"
			value="${cantidad}" />
	</p>
	<p>
		Numero Formateado (6):
		<fmt:formatNumber type="percent" minFractionDigits="10"
			value="${cantidad}" />
	</p>
	<p>
		Numero Formateado (7):
		<fmt:formatNumber type="percent" maxIntegerDigits="3"
			value="${cantidad}" />
	</p>
	<p>
		Numero Formateado (8):
		<fmt:formatNumber type="number" pattern="###.###E0"
			value="${cantidad}" />
	</p>
	<p>
		Moneda en España:
		<fmt:formatNumber value="${cantidad}" type="currency"
			currencyCode="EUR" />
	</p>
</body>
</html>