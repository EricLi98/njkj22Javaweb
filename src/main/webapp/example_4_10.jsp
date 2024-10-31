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
    session.setMaxInactiveInterval(10);
    boolean isNew=session.isNew();
    if(isNew){
        out.print("new session<br/>");
    }
    out.print("session max inactive interval : "+session.getMaxInactiveInterval()+" sec.");
    long num=session.getCreationTime();
    Date date=new Date(num);
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    out.print("<br/>session created at : "+sdf.format(date));
    out.print("<br/>session id : "+session.getId());
%>
</body>
</html>