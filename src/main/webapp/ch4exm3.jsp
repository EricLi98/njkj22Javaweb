<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
</head>
<body>
<%
    String errorMsg=(String)request.getAttribute("errorMsg");
    if( errorMsg!=null ){
%>
<font color="red"><%=errorMsg%></font>
<%
    }
%>
<form action="ch4exm3Getvalue.jsp" method="post">
    <input type="text" name="number" />

    <input type="submit" value="login"/>
</form>
</body>
</html>