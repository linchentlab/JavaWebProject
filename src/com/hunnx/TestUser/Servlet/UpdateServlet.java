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

@WebServlet(name = "UpdateServlet",urlPatterns = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String date = request.getParameter("birthday");

        Users users = new Users();
        users.setName(name);
        users.setPassword(password);
        users.setEmail(email);
        users.setBirthday(Date.valueOf(date));

        boolean result1 = UserService.updateUser(users);
        if (result1) {
            request.getSession().setAttribute("user", users);
            request.setAttribute("msg", "修改用户信息成功,请重新登录");
            request.getRequestDispatcher("/user/login.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "修改用户信息失败");
            request.getRequestDispatcher("/user/updateUser.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
