<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sssy
  Date: 15/3/2023
  Time: 下午8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <%--BootStrap 美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

    <div class="container">

        <div class="row clearfix"><%--清除浮动--%>
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表—————显示所有书籍</small>
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 column">
                    <%--toAddBook--%>
                    <a href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                </div>
                <div class="col-md-4 column">

                </div>
                <div class="col-md-4 column">
                    <%--查询书籍--%>
                    <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                        <input type="text" name="queryBookName" class="form-control" placeholder="请插入要查询的书籍名称">
                        <input type="submit" name="" value="查询" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>书籍编号</th>
                            <th>书籍名称</th>
                            <th>书籍数量</th>
                            <th>书籍详情</th>
                            <th>操作</th>
                        </tr>
                    </thead>

                    <%--书籍从数据库中查询出来，从这个list遍历出来：foreach--%>
                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>
                                    <span style="color:red;font-weight:bold">${error}</span>
                                    <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                                    &nbsp;&nbsp; | &nbsp;
                                    <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
