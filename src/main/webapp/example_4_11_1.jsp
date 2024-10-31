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
    StringBuffer s=(StringBuffer)application.getAttribute("message");
    if(s!=null){
        out.print(s.toString());
    }else{
        out.print("no message");
    }
%>
<form action="example_4_11_2.jsp" method="post">
    <input type="text" name="message"/><br/>
    <input type="submit" value="submit"/>
</form>
</body>
</html>