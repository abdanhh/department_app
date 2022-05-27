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
<title>Welcome Page</title>
</head>
<body>
<form action="WelcomeServlet" method="get">
	<table border = "1">
	<thead>
         <tr>
            <td>Department</td>
            <td>Student ID</td>
            <td>Marks</td>
            <td>Pass %</td>
         </tr>
    </thead>
    
    <tbody>
     <% ArrayList arr = (ArrayList) request.getAttribute("dep");
     	int count = 0;
     %>
        <% for(int i=0; i < arr.size(); i++){ %>
        	<tr>
        	<% DepartmentDTO dto = (DepartmentDTO) arr.get(i); 
        		if(dto.getDepartment().equalsIgnoreCase("Dept 1"))
        	%>
        	<td><%= dto.getDepartment() %>
        	</td>
        	<td><a href="detailProfile.jsp"><%= dto.getStudentId() %></a></td>
        	<td><%= dto.getMark() %></td>
        	</tr>
        <% } %>
         
         </tbody>
    </table>
 </form>
</body>
</html>