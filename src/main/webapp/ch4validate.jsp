<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
    String username = request.getParameter("username");
    if( username!=null&& !username.equals("tom") ){
        response.sendRedirect("ch4_login.jsp");
    }else{
        out.print("welcome "+username);
    }
%>
</h1>
</body>
</html>