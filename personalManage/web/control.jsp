<%--
  Created by IntelliJ IDEA.
  User: pugbabu
  Date: 2018/10/18
  Time: 下午3:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.website.bean.*,com.website.db.*,java.util.*" errorPage="error.jsp" %>
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
        String password = request.getParameter("password");
        Emp user = new Emp(account, null, password, null);
        boolean flag = DBUtil.selectEmpByAccountAndPassword(user);
        Map<String,Emp> map = DBUtil.map;
        if (flag){
//            session.setAttribute("account", account);
            Object o = application.getAttribute("count");
            if (o == null) {
                application.setAttribute("count", 1);
            } else {
                int count = Integer.parseInt(o.toString());
                application.setAttribute("count", count + 1);
            }
    %>
        <h3 align="right">访问量：<%= application.getAttribute("count") %></h3>
        <table class="table table-striped">
           <tr>
               <td>员工</td>
               <td>姓名</td>
               <td>邮箱</td>
               <td>修改</td>

           </tr>
            <%
                for(String key : map.keySet()) {
                    Emp e = map.get(key);
                    %>
                    <tr>
                        <td>
                            <%= e.getAccount() %>
                        </td>
                        <td>
                            <%= e.getName() %>
                        </td>
                        <td>
                            <%= e.getEmail() %>
                        </td>
                        <td>
                            <a href="update.jsp?account=<%= e.getAccount() %>&name=<%= e.getName() %>&email=<%= e.getEmail() %>">修改</a>
                        </td>
                    </tr>

                    <%


                }
            %>
        </table>
    <%
        }else {
            throw new Exception("用户名和密码错误");
        }
    %>


</body>
</html>
