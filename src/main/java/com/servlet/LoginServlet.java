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

@WebServlet(name = "LoginServlet", urlPatterns ={ "/loginServlet"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;//序列化版本号
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.print("<html><body>");
        if (username==null || username.length()==0){
            out.print("用户名不能为空");
        }else if (password==null || password.length()==0){
            out.print("密码不能为空");
        }else if (username.equals("admin") && password.equals("admin")){
            out.print("登录成功");
        }else{
            out.print("用户名或密码错误");
        }
        out.print("</body></html>");
        }

    }

