<%--
  Created by IntelliJ IDEA.
  User: pugbabu
  Date: 2018/10/18
  Time: 下午3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人事管理系统</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<%
    pageContext.include("header.jsp");
%>
<%
    String account = request.getParameter("account");
    String name = request.getParameter("name");
    String email = request.getParameter("email");

%>
<form style="width: 500px;margin:50px auto;" action="update_control.jsp">
    <table class="table table-hover table-bordered" >
        <tr>
            <td>账户</td>
            <td>
                <input type="text" class="form-control" name="account" value="<%= account %>" />
            </td>
        </tr>
        <tr>
            <td>用户</td>
            <td>
                <input type="text" class="form-control" name="name" value="<%= name %>" />
            </td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td>
                <input type="text" class="form-control" name="email" value="<%= email %>" />
            </td>
        </tr>
    </table>
    <input type="submit" class="btn btn-success" style="margin-left:100px;margin-top: 10px;width:100px;">
</form>


</body>
</html>
