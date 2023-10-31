<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/12/12
  Time: 13:17
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
        width: 500px;
        height: 400px;
        margin-left: 300px;
        margin-top: 150px;
        background-color: white;
        border: aliceblue;
    }
    #inner{
        margin-left: 160px;
        margin-top: 200px;
    }
    </style>
</head>
<body>
   <div id="inner">
       <div id="frame">
           <center><h1>用户信息修改</h1></center>
           <form action="<%=request.getContextPath()%>/UpdateServlet" method="post">
               <center>用户名:  <input type="text" name="name"  readonly="true" value="${user.name}"></center><br><br>
               <center>密&nbsp;&nbsp;&nbsp;&nbsp;码:  <input type="text" name="password"   value="${user.password}"></center><br><br>
               <center>email:  <input type="text" name="email"  value="${user.email}"></center><br><br>
               <center>生&nbsp;&nbsp;&nbsp;&nbsp;日:  <input type="text" name="birthday"   value="${user.birthday}"></center><br><br><br>
               <center><button><input type="submit" value="修改"></button></center>
           </form>
           ${requestScope.msg}
       </div>
   </div>
</body>
</html>
