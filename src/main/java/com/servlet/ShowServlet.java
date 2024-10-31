package com.servlet;

import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;
@WebServlet(name = "ShowServlet",urlPatterns = {"/showServlet"})
public class ShowServlet extends javax.servlet.http.HttpServlet{
    private static final long serialVersionUID = 1L;
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request, response);
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.println("用户名："+username+"<br/>");
        out.println("密码："+password);
    }
}
