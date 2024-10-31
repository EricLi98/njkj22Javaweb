package com.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.PrintWriter;

@WebServlet(name="/getLengthOrAreaServlet",urlPatterns = {"/getLengthOrAreaServlet"})
public class GetLengthOrAreaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, java.io.IOException {
        response.setContentType("text/html;charset=utf-8");
        String length = request.getParameter("length");
        String width = request.getParameter("width");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
        out.println("  <BODY>");
        double area = 0;
        try {
            area = Double.parseDouble(length) +Double.parseDouble(width);
            out.println("周长是："+area*2);
        }catch (NumberFormatException e){
            out.println("请输入数字");
        }
        out.print("  </body></html");

            }

    public void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, java.io.IOException {
        response.setContentType("text/html;charset=utf-8");
        String length = request.getParameter("length");
        String width = request.getParameter("width");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
        out.println("  <BODY>");
        double area = 0;
        try {
            area = Double.parseDouble(length) *Double.parseDouble(width);
            out.println("面积是："+area);
        }catch (NumberFormatException e){
            out.println("请输入数字");
        }
        out.print("  </body></html");

    }
}
