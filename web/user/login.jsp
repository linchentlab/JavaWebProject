<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/11/28
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style>
        body {
            background-size:cover;
            background-image: url("/picture/6.jpeg");
        }
        #frame{
            width: 500px;
            height: 260px;
            margin-left: 455px;
            margin-top: 250px;
            background-color: white;
            border: aliceblue;
        }
        #innner{
            margin-left: 160px;
            margin-top: 180px;
        }
    </style>
</head>
<div class="a">
    <body>
    <div id="frame">
        <div id="innner">
            <h3>用户登录</h3>
            <form action="<%=request.getContextPath()%>/LoginServlet" method="post" >
                用户名：&nbsp<input type="text" name="name"><br><br>
                密码：&nbsp<input type="password" name="password"><br><br>
                <input type="submit" value="登录" name="login"><br>
            </form>
            <a href="<%=request.getContextPath()%>/user/addUsers.jsp">没有账户，去注册</a><br>
            ${requestScope.msg}
        </div>
    </div>
    </body>
</div>
</html>
