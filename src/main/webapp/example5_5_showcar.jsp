<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="car" class="com.bean.Car" scope="page" />
<jsp:setProperty name="car" property="*" />
<jsp:getProperty name="car" property="number" />
<jsp:getProperty name="car" property="tradeMark" />
</body>
</html>