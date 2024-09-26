<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="" method="post">
<p> we  study response object </p>
    <input type="submit" value="word" name="submit"/>

    <input type="submit" value="excel" name="submit"/>
</form>
    <%
        String submit=request.getParameter("submit");
        if( submit!=null ){
            if( submit.equals("word") ){
                response.setContentType("application/msword");
            }else if( submit.equals("excel") ){
                response.setContentType("application/vnd.ms-excel");
            }
        }
    %>
</body>
</html>