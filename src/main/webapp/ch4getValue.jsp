<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
//url?para1=val1&para2=val2
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("username");
    out.print(username);
%>