<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Core examples</title>
<link rel="stylesheet" type="text/css" href="/06-jstl1/styles.css">
</head>
<body>
	<h1>JSTL - functions examples</h1>


	<h2>fn:contains()</h2>
	<c:set var="myString1" value="Welcome to jungle" />
	<c:out value="String to evaluate: ${myString1}"></c:out>
	<c:if test="${fn:contains(myString1, 'hello')}">
		<p>Found hello string
		<p>
	</c:if>
	<c:if test="${fn:contains(myString1, 'jungle')}">
		<p>Found jungle string
		<p>
	</c:if>
	<hr>


	<h2>fn:endsWith()</h2>
	<c:set var="myString1" value="hello enter sandman" />
	<c:out value="String to evaluate: ${myString1}"></c:out>
	<c:if test="${fn:endsWith(myString1, 'hello')}">
		<p>String ends with hello
		<p>
	</c:if>
	<c:if test="${fn:endsWith(myString1, 'sandman')}">
		<p>String ends with sandman
		<p>
	</c:if>
	<hr>


	<h2>fn:escapeXml()</h2>
	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>With escapeXml() Function:</p>
	<p>string-1 : ${fn:escapeXml(string1)}</p>
	<p>string-2 : ${fn:escapeXml(string2)}</p>
	<br />
	<p>Without escapeXml() Function:</p>
	<p>string-1 : ${string1}</p>
	<p>string-2 : ${string2}</p>
	<hr>


	<h2>fn:indexOf()</h2>
	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>Index-1 : ${fn:indexOf(string1, "first")}</p>
	<p>Index-2 : ${fn:indexOf(string2, "second")}</p>
	<hr>



	<h2>fn:trim()</h2>
	<c:set var="str1"
		value="    Welcome to  JSP        programming         " />
	<p>String-1 Length is : ${fn:length(str1)}</p>

	<c:set var="str2" value="${fn:trim(str1)}" />
	<p>String-2 Length is : ${fn:length(str2)}</p>
	<p>Final value of string is : ${str2}</p>
	<hr>


	<h2>fn:startsWith()</h2>
	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
	The string starts with "The": ${fn:startsWith(msg, "The")}
	<br>The string starts with "Example": ${fn:startsWith(msg, "Example")}
	<hr>


	<h2>fn:split()</h2>
	<c:set var="str1" value="Welcome-to-JSP-Programming." />
	<c:out value="String to evaluate: ${str1}"></c:out>

	<c:set var="str2" value="${fn:split(str1, '-')}" />
	<c:set var="str3" value="${fn:join(str2, ' ')}" />

	<p>String-3 : ${str3}</p>
	<c:set var="str4" value="${fn:split(str3, ' ')}" />
	<c:set var="str5" value="${fn:join(str4, '-')}" />

	<p>String-5 : ${str5}</p>
	<hr>




	<div style="height: 450px;"></div>
</body>
</html>
