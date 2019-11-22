<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.telefonica.jee.model.Product"  %> 
<%@ page import="java.util.*"  %> 


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Core examples</title>
</head>
<body>

<h1>JSTL - Core Examples</h1>


	<h4>c:set y c:out</h4>
	<c:set var="texto" value="clases de java para dormir" />
	El valor de la variable
	<b>texto</b> es :
	<c:out value="${texto}" />
	<hr />
	
	
	<h4>c:remove</h4>
	<c:remove var="texto" scope="page" />
	El valor de la variable
	<b>texto</b> ahora es :
	<c:out value="${texto}" />
	<hr />
	
	
	<h4>c:catch y c:if</h4>
	<c:catch var="excepcion"><%=3 / 0%></c:catch>
	<c:if test="${excepcion!=null}">           
	 Excepción : <c:out value="${excepcion}" />
	</c:if>
	<hr />
	
	
	
	<h4>c:if</h4>
	<c:set var="n" value="20" />
	n:
	<c:out value="${n}" default="Ya no existe" />
	<br />
	<c:if test="${n> 65}">            
		La variable <b></b> es <b>mayor</b> que 65.    
	</c:if>
	<c:if test="${n< 100 }">            
		La variable <b></b> es <b>menor</b> que 65.    
	</c:if>
	<hr />
	<c:set var="texty" value="hi man" />
	<c:if test="${texty == 'hi man'}">            
		La variable <b></b> es <b>mayor</b> que 65.    
	</c:if>
	
	
	
	<h4>c:choose</h4>
	<c:set var="n" value="1" />
	<c:choose>
		<c:when test="${n==1}">
			<b>n</b> es 1. hola buenas viva el vino</c:when>
		<c:when test="${n==2 }">
			<b>n</b> es 2.</c:when>
		<c:otherwise>
			<b>n</b> tiene un valor diferente de 1 y de 2.</c:otherwise>
	</c:choose>
	<hr />
	
	
	<h4>c:forEach</h4>
	<jsp:useBean id="namesList" scope="page" class="com.telefonica.jee.model.NamesList" />
	<p>Los elementos en la lista son:</p>
	<c:forEach var="name" items="${namesList.names}">
		<b><c:out value="${name}" /></b>
		<br />
	</c:forEach>
	<hr />
	
		<h4>c:forEach 2</h4>

		<%  
		Product product1 = new Product();
		Product product2 = new Product();
		product1.setName("product1");
		product2.setName("product2");
		List<Product> products = new ArrayList<Product>();
		products.add(product1);
		products.add(product2);
		pageContext.setAttribute("products",products);
		%>

	<p>Los elementos en la lista son:</p>
	<c:forEach var="product" items="${products}">
		<b><c:out value="${product.name}" /></b>
		<br />
	</c:forEach>
	<hr />
	
	
	<h4>c:forTokens</h4>
	<c:set var="cosas" value="Hierro-Madera-Arena" />
	<c:out value="${cosas}" />
	<br />
	<c:forTokens items="${cosas}" delims="-" var="cosa">
		<c:out value="${cosa}" />
	</c:forTokens>
	<hr />
	
	
	<c:set var="frase" value="Estos son los tokens de la frase" />


	<c:forTokens items="${frase}" delims=" " var="token" varStatus="i">
		<b><c:out value="${i.count}" />.</b>
		<c:out value="${token}" />
		<br />
	</c:forTokens>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
