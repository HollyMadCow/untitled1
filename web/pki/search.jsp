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
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.1.1.min.js"></script>
</head>
<body>

<%--<p>--%>
    <%--<%=keyword%>--%>
<%--</p>--%>


<table class="table">
    <%--<caption>上下文表格布局</caption>--%>
    <thead>
    <tr>
        <th>产品</th>
        <th>付款日期</th>
        <th>状态</th>
        <th>状态1</th>
    </tr>
    </thead>
    <tbody>
    <tr class="active">
        <td>产品1</td>
        <td>23/11/2013</td>
        <td>待发货</td>
        <td><a href="javascript:void(0)" onclick="mybusiness()">详细</a></td>
        <%--<td><button type="button" class="btn btn-default">详情</button></td>--%>

    </tr>
    <tr class="success">
        <td>产品2</td>
        <td>10/11/2013</td>
        <td>发货中</td>
        <td><a href="javascript:void(0)" onclick="mybusiness()">详细</a></td>
    </tr>
    <tr  class="warning">
        <td>产品3</td>
        <td>20/10/2013</td>
        <td>待确认</td>
        <td>发货中</td>
    </tr>
    <tr  class="danger">
        <td>产品4</td>
        <td>20/10/2013</td>
        <td>已退货</td>
        <td>发货中</td>
    </tr>
    </tbody>
</table>
<ul class="pagination">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>
</body>
</html>
