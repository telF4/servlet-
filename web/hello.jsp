<%--
  Created by IntelliJ IDEA.
  User: yli13
  Date: 2023/1/13
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>你好界面</title>
</head>
<body>
<font color="blue" size="22">
    <%
        out.print(request.getParameter("userName")+"你好，欢迎来到我的世界！<br>");
    %>
</font>
<%--重定向回到登录界面--%>
<a href="<%=request.getContextPath()%>/login.jsp">重新登录</a>
</body>
