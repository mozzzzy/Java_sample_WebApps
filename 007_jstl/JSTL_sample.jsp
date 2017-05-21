<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.util.ArrayList"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	request.setAttribute("value1",new Integer(2));

	ArrayList<String> al = new ArrayList<String>();
	al.add("Str1");
	al.add("Str2");
	al.add("Str3");
	request.setAttribute("set1",al);

%>

<html>
<head>
	<title>JSTL sample</title>
</head>


<body>
	<!-- if -->
	<a:if test=${value1 ge 1}>
		larger than 1
	</a:if>
	<a:if test=${value1 lt 1}>
		smaller than 1
	</a:if>

	<!-- like switch ? -->
	<a:choose>
	<a:when test="${value1 eq 0}">0!!</a:when>
	<a:when test="${value1 eq 1}">1!!</a:when>
	<a:when test="${value1 eq 2}">2!!</a:when>
	<a:otherwise>Other!!</a:otherwise>
	</a:choose>

	<!-- loop (ほんまにこれでええんか？)-->
	<a:forEach items="${set1}" var="s1">
		<p>${s1}</p>
	</a:forEach>

	<a:forEach val="i" begin="1" end="9" step="1">
		${i}
	</a:forEach>

</body>

</html>
