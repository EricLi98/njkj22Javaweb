<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bean.Rectangle" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<jsp:useBean id="rect" class="com.bean.Rectangle" scope="page" />
<P><%=rect.calculateArea()%></P>
<P><%=rect.calculatePerimeter()%></P>
<P><%=rect.getHeight()%></P>
<P><%=rect.getWidth()%></P>
</body>
</html>