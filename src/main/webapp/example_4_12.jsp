<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
    pageContext.setAttribute("pageKey","pageKey_value");
    String pageValue=(String)pageContext.getAttribute("pageKey");
    request.setAttribute("requestKey","requestKey_value");
    String requestKey_value=(String)pageContext.getAttribute("requestKey",2);

    out.print("pageValue:"+pageValue+"<br/>");
    out.print("requestKey_value:"+requestKey_value+"<br/>");
%>
</body>
</html>