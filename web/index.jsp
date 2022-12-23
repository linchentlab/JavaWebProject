<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/12/22
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      body {
        background-size:cover;
        background-image: url("/picture/7.jpeg");
      }
      #frame{
        width: 500px;
        height: 400px;
        margin-left: 450px;
        margin-top: 150px;
        background-color: burlywood;
        border: black;
      }
      #innner{
        margin-left: 160px;
        margin-top: 180px;
      }
    </style>
  </head>
  <body>
    <div id="frame">
      <div id="innner">
        <form>
          <br><br><h3>欢迎用户${user.name}</h3><br>
          1.&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/UserServlet">查询所有用户信息</a><br><br><br>
          2.&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/User/updateUser.jsp">修改当前用户信息</a><br><br><br>
          3.&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/DelServlet?name=${user.name}">删除当前用户信息</a><br><br><br>
          4.&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/LoginOutServlet">用户退出</a><br><br><br>
        </form>
      </div>
    </div>
  </body>
</html>
