<%--
  Created by IntelliJ IDEA.
  User: pugbabu
  Date: 2018/10/18
  Time: 下午2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人事管理系统</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        .header{
            height: 60px;
            line-height: 60px;
            color: #fff;
            font-size: 14px;
            text-align: center;
            background: #000;
            position: relative;
        }
        .user-tip{
            position: absolute;
            height: 100%;
            right: 20px;
            color: #fff;
            bottom: 0;
        }
        .user-tip span:nth-child(2) {
            color: red;
        }
    </style>
</head>
<body>
    <div class="header">
        <p>人事管理系统，我选人事360</p>
        <%--<div class="user-tip">--%>
            <%--<span>用户</span>--%>
            <%--<span><%= session.getAttribute("account") %></span>,--%>
            <%--<span>欢迎登录人事系统后台</span>--%>
        <%--</div>--%>


    </div>

</body>
</html>
