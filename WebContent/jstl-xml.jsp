<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
 
 <!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Core examples</title>
<link rel="stylesheet" type="text/css" href="/06-jstl1/styles.css">
</head>
<body>
	<h1>JSTL - xml examples</h1>

<h4></h4>
<h2>x:out example</h2>
		<c:set var="vegetable">  
		<vegetables>  
		    <vegetable>  
		      <name>onion</name>  
		      <price>40/kg</price>  
		    </vegetable>  
		 <vegetable>  
		      <name>Potato</name>  
		      <price>30/kg</price>  
		    </vegetable>  
		 <vegetable>  
		      <name>Tomato</name>  
		      <price>90/kg</price>  
		    </vegetable>  
		</vegetables>  
		</c:set>  
		<x:parse xml="${vegetable}" var="output"/>  
		<b>Name of the vegetable is</b>:  
		<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
		<b>Price of the Potato is</b>:  
		<x:out select="$output/vegetables/vegetable[2]/price" /> 
<hr>


<h2>x:parse example</h2>
<c:import var="bookInfo" url="xml/books.xml"/>  
  
<x:parse xml="${bookInfo}" var="output"/>  
<p>First Book title: <x:out select="$output/books/book[1]/name" /></p>  
<p>First Book price: <x:out select="$output/books/book[1]/price" /></p>  
<p>Second Book title: <x:out select="$output/books/book[2]/name" /></p>  
<p>Second Book price: <x:out select="$output/books/book[2]/price" /></p>  
<hr>






<h2>x:set example</h2>
<c:set var="book">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
<x:parse xml="${book}" var="output"/>  
<x:set var="result" select="$output/books/book[2]/price"/>  
<b>The price of the Tomorrow land book</b>:  
<x:out select="$result" />  
<hr>


<h2>x:choose example</h2>
<c:set var="xmltext">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
  
<x:parse xml="${xmltext}" var="output"/>  
<x:choose>  
   <x:when select="$output//book/author = 'Chetan ddfdf'">  
      Book is written by Chetan bhagat  
   </x:when>  
   <x:when select="$output//book/author = 'Brad Bird'">  
      Book is written by Brad Bird  
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose> 
<hr>






	<div style="height: 450px;"></div>
</body>
</html>
