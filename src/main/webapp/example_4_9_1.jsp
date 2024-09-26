<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="example_4_9_2.jsp" method="post">
    <p>ID:<input type="text" name="id"/></p>
    1.single<br/>
    <input type="radio" name="one" value="A"/>A<br/>
    <input type="radio" name="one" value="B"/>B<br/>
    <input type="radio" name="one" value="C"/>C<br/>
    <input type="radio" name="one" value="D"/>D<br/>
    <P>
    2.T/F<br/>
    <input type="radio" name="two" value="T"/>T<br/>
    <input type="radio" name="two" value="F"/>F<br/>
    </P>
    <input type="submit" value="submit"/>
</form>
</body>
</html>