<%--
  Created by IntelliJ IDEA.
  User: sssy
  Date: 15/3/2023
  Time: 下午8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <%--在 <style> 元素中，您可以规定在浏览器中如何呈现 HTML 文档。--%>
    <%--如需链接外部样式表，请使用 <link> 标签。--%>
    <style>
        a{
            text-decoration: none;
            /*text-decoration 属性规定添加到文本的修饰。*/
            /*  none	默认。定义标准的文本。
                underline	定义文本下的一条线。
                overline	定义文本上的一条线。
                line-through	定义穿过文本下的一条线。
                blink	定义闪烁的文本。
                inherit	规定应该从父元素继承 text-decoration 属性的值。
            */
            color: black;
            font-size: 18px;
        }
        h3{
            width: 180px;
            height: 38px;
            margin: 100px auto;
            /*
                margin 属性为给定元素设置所有四个（上下左右）方向的外边距属性。
                也就是 margin-top，margin-right，margin-bottom和 margin-left
                四个外边距属性设置的简写。
            */
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h3>
        <a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a>
    </h3>
</body>
</html>
