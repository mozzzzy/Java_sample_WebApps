<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	request.setAttribute("value1","this is test data.");
%>



<html>
<head>
<title>EL sample</title>
</head>

<body>
	<!-- we can use Expression Language (EL) in jsp-->
	${value1}
</body>


</html>
