<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
    int pageSum=1;
    int sessionSum=1;
    int applicationSum=1;
    if(pageContext.getAttribute("pageSum")!=null){
        pageSum=(Integer)pageContext.getAttribute("pageSum");
        pageSum++;
    }
    pageContext.setAttribute("pageSum",pageSum);
    if(session.getAttribute("sessionSum")!=null){
        sessionSum=(Integer)session.getAttribute("sessionSum");
        sessionSum++;
    }
    session.setAttribute("sessionSum",sessionSum);
    if(application.getAttribute("applicationSum")!=null){
        applicationSum=(Integer)application.getAttribute("applicationSum");
        applicationSum++;
    }
    application.setAttribute("applicationSum",applicationSum);
    out.print("pageSum="+pageSum+"<br>");
    out.print("sessionSum="+sessionSum+"<br>");
    out.print("applicationSum="+applicationSum+"<br>");
%>
</body>
</html>