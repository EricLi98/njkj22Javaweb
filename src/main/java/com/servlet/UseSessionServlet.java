package com.servlet;

import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;
@WebServlet(name = "UseSessionServlet",urlPatterns = {"/sendMyName"})
public class UseSessionServlet extends javax.servlet.http.HttpServlet{
    private static final long serialVersionUID = 1L;
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        if(username==null || username.equals("")){
            response.sendRedirect("ch6_useSession.jsp");
        }else {
            javax.servlet.http.HttpSession session = request.getSession();
            session.setAttribute("username",username);
            out.println("<html><body>");
            out.println("<h1>servlet："+getServletName()+"</h1>");
            out.println("session id："+session.getId());
            out.println("show username：<a href='showMyName'>another servlet</a>");
            out.println("</body></html>");
        }

    }
}
