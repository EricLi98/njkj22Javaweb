<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<h1>
<%
    String id=session.getId();
%>
<%=id%>
</h1>
<a href="../cat/example_4_8_3.jsp">next</a>
</body>
</html>