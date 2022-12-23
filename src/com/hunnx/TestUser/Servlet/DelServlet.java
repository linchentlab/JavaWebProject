package com.hunnx.TestUser.Servlet;

import com.hunnx.TestUser.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DelServlet",urlPatterns = "/DelServlet")
public class DelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean result2 = UserService.deleteUser(name);
        if (result2) {
            request.setAttribute("msg", "删除用户信息成功");
            request.getRequestDispatcher("/user/login.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "删除用户信息失败");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
