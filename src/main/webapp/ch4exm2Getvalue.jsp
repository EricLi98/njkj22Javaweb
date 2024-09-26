<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String[] cities=request.getParameterValues("cities");
    if( cities!=null ){
        for( String city : cities ){
            out.print(city+"<br/>");
        }
    }
%>