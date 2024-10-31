<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bean.NewRectangle" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<jsp:useBean id="pig" class="com.bean.NewRectangle" scope="page" />
<%
    pig.setHeight(30);
    pig.setWidth(20);
%>
<P><jsp:getProperty name="pig" property="height" /></p>
<P><jsp:getProperty name="pig" property="width" /></p>
<P><jsp:getProperty name="pig" property="area" /></p>
<P><jsp:getProperty name="pig" property="perimeter" /></p>
</body>
</html>