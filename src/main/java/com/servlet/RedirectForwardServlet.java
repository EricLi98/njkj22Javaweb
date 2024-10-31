package com.servlet;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "RedirectForwardServlet",urlPatterns = {"/redirectForwardServlet"})
public class RedirectForwardServlet extends javax.servlet.http.HttpServlet{
    @Override
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request, response);
    }
    @Override
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username==null || password==null){
            response.sendRedirect("ch6_redirectForward.jsp");
            return;
        }
        if(username.length()==0 || password.length()==0){
            response.sendRedirect("ch6_redirectForward.jsp");
            return;
        }
        request.getRequestDispatcher("showServlet").forward(request,response);
    }
}
