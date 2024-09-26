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
    Date date=new Date();
    out.print(date.getSeconds()+"");
    response.setHeader("refresh", "3");
%>
</h1>
</body>
</html>