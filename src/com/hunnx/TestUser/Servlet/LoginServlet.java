package com.hunnx.TestUser.Servlet;

import com.hunnx.TestUser.Entity.Users;
import com.hunnx.TestUser.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        Users users = UserService.login(name, password);
        if(users!=null){
            request.getSession().setAttribute("user", users);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }else{
            request.setAttribute("msg", "用户名或密码错误");
            request.getRequestDispatcher("/user/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
