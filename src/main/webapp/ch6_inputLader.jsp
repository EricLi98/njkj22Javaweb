<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
    <body>
        <form action="getLengthOrAreaServlet" method="post">
            长：<input type="text" name="length" /><br/>
            宽：<input type="text" name="width" /><br/>
            <input type="submit" value="submit"/>
        </form>
        <br/>
        <form action="getLengthOrAreaServlet" method="get">
                    长：<input type="text" name="length" /><br/>
                    宽：<input type="text" name="width" /><br/>
                    <input type="submit" value="submit"/>
        </form>
    </body>
</html>