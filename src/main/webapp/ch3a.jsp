<html>
    <head></head>
    <body>
    <!--html comment ,在浏览器中的源码可以看到-->
    <%-- jsp comment ,在浏览器中无法看到--%>
        abc
    <%
        //comment,在java代码块中的注释
        int a=0;//在一个程序片中声明的变量称为JSP页面的局部变量，
    %>

    <%
        out.print(a+1);//它们在JSP页面后继的所有程序片以及表达式内都有效
        out.print(val1);//成员变量在整个JSP页面内都有效（与书写位置无关），

    %>
    <br/>
    <%
        out.print(add(1,2));//调用成员方法
    %>
    <br/>
    <%--java 表达式-->
    <%=val1%>
    </body>
    <%!
        String val1="val1";//成员变量
        int add(int a,int b){//成员方法
            return a+b;
        }
    %>
</html>