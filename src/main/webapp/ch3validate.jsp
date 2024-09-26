<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if( username!=null && password!=null ){
        if( username.equals("tom") && password.equals("jenny") ){
        %>
        <jsp:forward page="ch3success.jsp"/>
        <%
        }
    }
%>
 <jsp:forward page="ch3login.jsp"/>