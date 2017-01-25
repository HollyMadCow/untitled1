<!DOCTYPE html>
<html lang="cn">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%><!--使用Enumeration导入此包-->
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.*" %>
<%@ include file="/WEB-INF/include/sql.jsp" %>
<%@include file="userinfo.jsp"%>
<%--<jsp:include page="sql.jsp"></jsp:include>--%>

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script>//
    function mysearch() {
        if (document.getElementById("searchfiled").value != "")
        {
            var keyword = document.getElementById("searchfiled").value;
            $( "#mainboard" ).load("search.jsp",{"keyword":keyword});
        }
    }
    </script>
    <script>
        function mybusiness() {
            $( "#mainboard" ).load( "business.jsp");
        }
    </script>
    <script>
        function myinfo() {
            $( "#mainboard" ).load( "reg.jsp");
        }
    </script>
    <script>

        window.onload=function () {
            var test=<%=userid%>;
            if(test == null)
            {
                $( "#mainboard" ).load( "reg.jsp");
            }

        }
    </script>
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
                    <%--<a class="navbar-brand" href=""><%=request.getHeader("SSL_CLIENT_S_DN_O")%>，您好！</a>--%>
                    <a class="navbar-brand" href=""><%=usercredit%>，您好！</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="javascript:void(0)" onclick="mybusiness()">您目前尚有<%=casecount%>件事务等待办结，点击查看。</a>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input class="form-control" type="text" id="searchfiled" placeholder="任意关键字全文搜索"/>
                        </div>
                        <button type="button" class="btn btn-default" onclick="mysearch()">搜索</button>
                    </form>

                    <ul class="nav navbar-nav navbar-right">

                    </ul>
                </div>

            </nav>
        </div>
    </div>
    <div class="row clearfix" id="wrap">
        <div class="col-md-2 column"  id="left">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        我的事务
                    </h3>
                </div>
                <%--<div class="panel-body">--%>
                    <%--Panel content--%>
                <%--</div>--%>

                <ul class="list-group">
                    <li class="list-group-item" style=""><a href="javascript:void(0)" onclick="mybusiness()"> 我的事务</a></li>
                    <li class="list-group-item" ><a href="javascript:void(0)" onclick="myinfo()"> 我的信息</a></li>

                </ul>
            </div>
        </div>
        <div class="col-md-10 column" id="right">
            <div id="mainboard">
                    <script>
                        $( "#mainboard" ).load( "welcome.jsp");
                    </script>
            </div>
        </div>
    </div>
    <div class="row clearfix" id="footer">
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