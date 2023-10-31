<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/12/2
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户信息</title>
    <style>
        body {
            background-size:cover;
            background-image: url("/picture/6.jpeg");
        }
        #frame{
            width: 600px;
            height: 400px;
            margin-left: 450px;
            margin-top: 250px;
            background-color: blanchedalmond;
            border: black;
        }
        #innner{
            margin-left: 40px;
            margin-top: 200px;
        }
    </style>
</head>
<body>
<div id="frame">
    <div id="innner">
        <center>
            <table>
                <thead>
                <td>id</td>
                <td>name</td>
                <td>password</td>
                <td>email</td>
                <td>birthday</td>
                <td>修改</td>
                <td>删除</td>
                </thead>
                <c:forEach var="user" items="${requestScope.pager.list}">
                    <tr >
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.password}</td>
                        <td>${user.email}</td>
                        <td>${user.birthday}</td>
                        <td><a href="<%=request.getContextPath()%>/user/updateUser.jsp">修改</a></td>
                        <td><a href="<%=request.getContextPath()%>/DelServlet?id=${user.id}">删除</a></td>
                    </tr>
                </c:forEach>
            </table>
        </center>
        <br><center>全部记录数：${pager.rowCount}<br>
            每页最多显示${pager.pageSize}条记录<br>
            当前显示第${pager.currentPage}页(共有${pager.pageCount}页) <br>
            <a href="<%=request.getContextPath()%>/UserServlet?currentPage=${pager.currentPage-1}&pageSize=${pager.pageSize}">上一页</a>
            <a href="<%=request.getContextPath()%>/UserServlet?currentPage=${pager.currentPage+1}&pageSize=${pager.pageSize}">下一页</a><br><br>
            <form action="<%=request.getContextPath()%>/UserServlet" method="post">
                输入页码:<input type="text" name="currentPage"><br><br>
                每页显示<input type="text" name="pageSize" value="${pager.pageSize}">条记录<br><br><br>
                <input type="submit" value="分页查询">
            </form>
            <a href="<%=request.getContextPath()%>/LoginOutServlet">退出</a></center>
    </div>
</div>
</body>
</html>
