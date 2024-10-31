<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<jsp:useBean id="car" class="com.bean.Car" scope="page" />
<%
    String number="LUA0531";
%>
<jsp:setProperty name="car" property="tradeMark" value="BMW" />
<jsp:setProperty name="car" property="number" value="<%=number%>" />
<jsp:getProperty name="car" property="number" />
<jsp:getProperty name="car" property="tradeMark" />
</body>
</html>