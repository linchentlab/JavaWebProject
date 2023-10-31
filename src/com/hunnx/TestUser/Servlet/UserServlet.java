package com.hunnx.TestUser.Servlet;

import com.hunnx.TestUser.Entity.Pager;
import com.hunnx.TestUser.Entity.Users;
import com.hunnx.TestUser.Service.UserService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns = "/UserServlet")
public class UserServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
             String a = request.getParameter("pageSize");
             int pageSize=a ==null?1: Integer.parseInt(request.getParameter("pageSize"));
             String b =request.getParameter("currentPage");
            int currentPage =b==null?1: Integer.parseInt(request.getParameter("currentPage"));
            Pager<Users> pager = UserService.getPageUsers(currentPage, pageSize);
            request.setAttribute("pager", pager);
            request.getRequestDispatcher("/user/userInfo.jsp").forward(request, response);
    }
        protected void doGet (javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse  response) throws javax.servlet.ServletException, IOException {
            doPost(request, response);
        }
    }
