<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
    long i=Math.round(Math.random()*10);
    if(i%2==0){
        System.out.println("even number");
        %>
        <jsp:forward page="example3_7_even.jsp">
            <jsp:param name="num" value="<%=i%>"/>
        </jsp:forward>
        <%
        System.out.println("even number2");
    }else{
        System.out.println("odd number");
        %>
        <jsp:forward page="example3_7_odd.jsp">
         <jsp:param name="num" value="<%=i%>"/>
        </jsp:forward>
        <%
        System.out.println("odd number2");
    }

%>