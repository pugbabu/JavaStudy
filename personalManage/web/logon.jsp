<%--
  Created by IntelliJ IDEA.
  User: pugbabu
  Date: 2018/10/18
  Time: 下午2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人事管理系统</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <%
        pageContext.include("header.jsp");
    %>
    config对象： <%= config.getServletName()%>
    <form class="form-horizontal" style="width: 500px;margin:50px auto;" action="control.jsp">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">账户名</label>
            <div class="col-sm-10">
                <input type="text" name="account" class="form-control" id="inputEmail3" placeholder="请输入用户名">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="请输入用户名">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">登录</button>
            </div>
        </div>
    </form>

</body>
</html>
