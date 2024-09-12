<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String length=request.getParameter("length");
    String width=request.getParameter("width");
    Double l=Double.parseDouble(length);
    Double w=Double.parseDouble(width);
%>
<%=l*w%>