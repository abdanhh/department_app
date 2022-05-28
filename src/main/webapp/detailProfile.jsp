<%@page import="dto.DepartmentDTO"%>
<%@page import="servlet.WelcomeServlet"%>
<%@page import="service.DepartmentService"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detail Profile</title>
</head>
<body>
<form>
	<% String id = (String) request.getParameter("value").toLowerCase();%>
     <p>Student name is <%= id %></p>
</form>
</body>
</html>