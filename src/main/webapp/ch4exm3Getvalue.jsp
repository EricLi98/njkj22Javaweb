<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String number = request.getParameter("number");
    try{
        int num=Integer.parseInt(number);
        out.print(num);
    }catch(Exception e){
        request.setAttribute("errorMsg","please input integer");
    %>
    <jsp:forward page="ch4exm3.jsp"/>
    <%
    }
%>