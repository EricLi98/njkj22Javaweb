<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
    String id=(String)session.getAttribute("id");
    int sum=0;
    String first=(String)(session.getAttribute("first"));
    if("D".equals(first)){
        sum+=2;
    }
    String second=(String)(session.getAttribute("second"));
    if("True".equals(second)){
        sum+=2;
    }
%>
<table>
<tr>
    <th>code</th>
    <th>score</th>
</tr>
<tr>
    <td><%=id%></td>
    <td><%=sum%></td>
</tr>
</table>
</body>
</html>