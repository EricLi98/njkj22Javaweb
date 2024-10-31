package com.servlet;

import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;

@WebServlet(name = "showName",urlPatterns = {"/showMyName"})
public class ShowNameServlet extends javax.servlet.http.HttpServlet{
    private static final long serialVersionUID = 1L;
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        javax.servlet.http.HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        out.println("<html><body>");
        out.println("<h1>servlet："+getServletName()+"</h1>");
        out.println("session id："+session.getId());
        out.println(" username："+username);
        out.println("</body></html>");


    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request,response);
    }
}
