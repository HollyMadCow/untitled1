<!DOCTYPE html>
<html lang="cn">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*"%><!--使用Enumeration导入此包-->
<%@page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.*" %>

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href=""><%=request.getHeader("SSL_CLIENT_S_DN_O")%>，您好！</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <%--<li class="active">--%>
                        <li>
                            <%
                                //JSP页面直接访问数据库
                                Connection conn = null;
                                Statement stmt = null;
                                ResultSet rs = null;
                                try{
//                                    Class.forName("com.mysql.jdbc.Driver");
//                                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yhgaj", "root", "zlw255151");
//                                    stmt = conn.createStatement();
//
                                    Context initCtx = new InitialContext();
                                    Context ctx = (Context) initCtx.lookup("java:comp/env");
//获取连接池对象
                                    DataSource ds =(DataSource)ctx.lookup("jdbc/ConnectionPool");
//创建连接
                                    conn = ds.getConnection();
                                     stmt = conn.createStatement();
                                     String sql="select username from USER ";
                                    rs = stmt.executeQuery(sql);
                                    while(rs.next()){
                                        String factor = rs.getString("username");
                            %>
                            <a href="javascript:void(0)" onclick="mybusiness()">您目前尚有<%=factor%>件事务等待办结，点击查看。</a>
                            <%
                                    }
                                }catch(Exception e){
                                    e.printStackTrace();
                                }finally{
                                    try{
                                        if(rs != null) rs.close();
                                        if(stmt != null) stmt.close();
                                        if(conn != null) conn.close();
                                    }catch(Exception e1){
                                        e1.printStackTrace();
                                    }
                                }
                            %>
                        </li>
                        <%--<li>--%>
                            <%--<a href="#">Link</a>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<a href="#">Action</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Another action</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Something else here</a>--%>
                                <%--</li>--%>
                                <%--<li class="divider">--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Separated link</a>--%>
                                <%--</li>--%>
                                <%--<li class="divider">--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">One more separated link</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input class="form-control" type="text" id="searchfiled" placeholder="任意关键字全文搜索"/>
                        </div>
                        <button type="button" class="btn btn-default" onclick="mysearch()">搜索</button>
                    </form>
                    <script>//
                        function mysearch() {
                            if (document.getElementById("searchfiled").value != "")
                            {
                                var keyword = document.getElementById("searchfiled").value;
                                $( "#mainboard" ).load("search.jsp",{"keyword":keyword});
                            }
                        }
                    </script>
                    <ul class="nav navbar-nav navbar-right">
                        <%--<li>--%>
                            <%--<a href="#">Link</a>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<a href="#">Action</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Another action</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Something else here</a>--%>
                                <%--</li>--%>
                                <%--<li class="divider">--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Separated link</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        我的事务
                    </h3>
                </div>
                <%--<div class="panel-body">--%>
                    <%--Panel content--%>
                <%--</div>--%>
                <script>
                    function mybusiness() {
                        $( "#mainboard" ).load( "business.jsp");
                    }
                </script>
                <script>
                    function myinfo() {
                        $( "#mainboard" ).load( "user.jsp");
                    }
                </script>
                <ul class="list-group">
                    <li class="list-group-item" ><a href="javascript:void(0)" onclick="mybusiness()"> 我的事务</a></li>
                    <li class="list-group-item" ><a href="javascript:void(0)" onclick="myinfo()"> 我的信息</a></li>

                </ul>
            </div>
        </div>
        <div class="col-md-10 column">
            <div class="jumbotron" id="mainboard">
                <%--<h1>--%>
                    <%--Hello, world!--%>
                <%--</h1>--%>
                <%--<p>--%>
                    <%--This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.--%>
                <%--</p>--%>
                <%--<p>--%>
                    <%--<a class="btn btn-primary btn-large" href="#">Learn more</a>--%>
                <%--</p>--%>
                    <script>
                        $( "#mainboard" ).load( "welcome.jsp");
                    </script>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-4 column">
            <h2>
                Heading
            </h2>
            <p>
                1
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column">
            <h2>
                Heading
            </h2>
            <p>
                2
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column">
            <h2>
                Heading
            </h2>
            <p>
                3
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
        </div>
    </div>
</div>
</body>
</html>