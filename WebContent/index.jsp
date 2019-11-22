<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import="com.telefonica.jee.model.Product"  %> 
<%@ page import="java.util.Random"  %> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hola JSTL</title>
</head>
<body>
	<h3>Definición de la variable hola con texto "Hola Mundo"</h3>
	<c:set var="hola" value="Hola Mundo!" />
	<hr />

		Saludo:
		<c:out value="${hola}" /> <br/>
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
		<c:forEach var="product" items="${products}">
		
		<span>${product.name}</span>
		
			<c:if test="${product.price > 50}">
				${product.name}
			</c:if>
			
			<c:choose>
			 <c:when test="${product.price > 100 && product.price < 150}">
			 Precio medio
			 </c:when>
			 <c:when test="${product.price > 150 && product.price < 250}">
			 Precio caro
			 </c:when>
			 <c:otherwise>
			 Precio normal
			 </c:otherwise>
			</c:choose>
			<br/>
		</c:forEach>
		
		
		<% Random aleatorio = new Random();
		int numero= aleatorio.nextInt(9999)+1; 
		pageContext.setAttribute("numero",numero);%>
		
		<c:set var="salario" value="${numero}"/>
		<h4>   
			
			Salario con \${salario}:  <c:out value="${salario}"/><br/>   
			Salario con \${numero}: <c:out value="${numero}"/><br/>
		</h4>
		
		

</body>
</html>