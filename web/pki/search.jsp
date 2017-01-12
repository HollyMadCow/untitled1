<%--
  Created by IntelliJ IDEA.
  User: CowBoy
  Date: 2017/1/12
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<%
    String keyword = request.getParameter("keyword");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>搜索</p>
<p>
    <%=keyword%>
</p>
</body>
</html>
