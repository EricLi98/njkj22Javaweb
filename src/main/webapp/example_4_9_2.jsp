<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="example_4_9_3.jsp" method="post">
<%
    String id=request.getParameter("id");
    session.setAttribute("id",id);
    String first=request.getParameter("one");
    session.setAttribute("first",first);
    String second=request.getParameter("two");
    session.setAttribute("second",second);
%>
ID:<%=id%><br/>
1.<%=first%><br/>
2.<%=second%><br/>
<input type="submit" value="next"/>
<a href="example_4_9_1.jsp">back</a>
</form>
</body>
</html>