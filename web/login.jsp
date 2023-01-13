<%--
  Created by IntelliJ IDEA.
  User: yli13
  Date: 2023/1/13
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>登录界面</title>
</head>
<body>
<div><%--post方式提交数据到servlet --%>
  <form action="<%=request.getContextPath()%>/LoginServlet" method="post">
    <label>用户名:</label>
    <input type="text" name="userName" value="${param.userName}"/><br><br>
    <label>密码：</label>
    <input type="password" name="password"/><br>
    <font color="red">
      <%--判断message属性是否为null --%>
      <%
        if(request.getAttribute("message")!= null){
          out.print(request.getAttribute("message"));
        }
      %>
    </font>
    <div id="submit">
      <input type="submit" value="登录"/>
    </div>
  </form>
</div>
</body>

