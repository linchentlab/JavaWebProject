package com.hunnx.TestUser.Servlet;

import com.hunnx.TestUser.Entity.Users;
import com.hunnx.TestUser.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "AddServlet",urlPatterns = "/AddServlet")
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users users = new Users();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String date = request.getParameter("birthday");
        users.setName(name);
        users.setPassword(password);
        users.setEmail(email);
        users.setBirthday(Date.valueOf(date));
        boolean result = UserService.addUser(users);
        if (result) {
            request.getSession().setAttribute("user", users);
            request.setAttribute("msg", "注册成功，请登录");
            request.getRequestDispatcher("/user/login.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "注册失败");
            request.getRequestDispatcher("/user/addUsers.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
