<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%!
    StringBuffer message=new StringBuffer("");
    ServletContext application;
    synchronized void sendMessage(String s){
        application=getServletContext();
        message.append(s+"->");
        application.setAttribute("message",message);
    }
%>
<%
    request.setCharacterEncoding("UTF-8");
    String content=request.getParameter("message");
    sendMessage(content);
    out.print("you  have submitted message");
    response.setHeader("refresh","3;url=example_4_11_1.jsp");
%>
</body>
</html>