package com.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ThirdServlet", urlPatterns ={ "/third"},
        initParams = {@WebInitParam(name = "name",value = "zhangsan"),@WebInitParam(name = "age",value = "18")})
public class ThirdServlet extends HttpServlet {
    private static int count = 0;
    private static final long serialVersionUID = 1L;//序列化版本号

    public void init(ServletConfig config) throws ServletException {
        System.out.println(" ThirdServlet init");
        super.init(config);
        System.out.println("name:"+getInitParameter("name"));
    }

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("service");
        count++;
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
        out.println("  <BODY>");
        out.print("    This is ThirdServlet servlet:"+count);
        out.println("  </BODY>");
        out.println("</HTML>");

    }

    @Override
    public void destroy() {
        System.out.println(" ThirdServlet destroy");
        super.destroy();

    }
}
