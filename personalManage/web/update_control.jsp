
<%--
  Created by IntelliJ IDEA.
  User: pugbabu
  Date: 2018/10/18
  Time: 下午5:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.website.bean.*,com.website.db.*,java.util.*" errorPage="error.jsp" %>

<html>
<head>
    <title>人事管理系统</title>

</head>
<body>
<%
    pageContext.include("header.jsp");
%>
<%
    Map<String,Emp> map = DBUtil.map;
    Emp emp = map.get(request.getParameter("account"));
    emp.setName(request.getParameter("name"));
    emp.setEmail(request.getParameter("email"));

%>
<h3 align="right">员工信息修改成功</h3>
</body>
</html>
