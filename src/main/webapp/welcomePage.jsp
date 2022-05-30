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
     %>
        <% for(int i=0; i < arr.size(); i++){ %>
        	<tr>
        	<% DepartmentDTO dto = (DepartmentDTO) arr.get(i);%>
        	<td><%= dto.getDepartment() %>
        	</td>
        	<td><a href='#' onclick='javascript:window.open("detailProfile.jsp?value=<%= dto.getStudentName() %>", "_blank", "scrollbars=1,resizable=1,height=300,width=450");' title='<%= dto.getStudentName() %>'><%= dto.getStudentId()%></a></td>
        	<td><%= dto.getMark() %></td>
        	<%
        		DepartmentService service = new DepartmentService();
        	%>
        	<td><%=service.countPass(dto.getDepartment()) %></td>  
        </tr>
        <% } %>
        
         </tbody>
    </table>
 </form>
</body>
</html>