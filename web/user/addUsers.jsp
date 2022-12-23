<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/12/2
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-size:cover;
            background-image: url("/picture/6.jpeg");
        }
        #frame{
            width: 400px;
            height: 400px;
            margin-left: 550px;
            margin-top: 150px;
            background-color: bisque;
            border: aliceblue;
        }
        #inner{
            margin-left: 50px;
            margin-top: 200px;
        }
    </style>
</head>
<body>
<div id="frame">
    <div id="inner">
        <form action="<%=request.getContextPath()%>/AddServlet" method="post">
            <center><h1>用户注册</h1></center><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名:  <input type="text" name="name"><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码:  <input type="text" name="password"><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email:&nbsp;&nbsp; <input type="text" name="email"><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生&nbsp;&nbsp;&nbsp;&nbsp;日:  <input type="Date" name="birthday"><br><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button><input type="submit" value="注册"></button>
        </form>
        ${requestScope.msg}
    </div>
</div>
</body>
</html>
