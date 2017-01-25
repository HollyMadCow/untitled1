
<!DOCTYPE html>
<html lang="cn">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/sql.jsp" %>
<style type="text/css">
    /*分别定义HTML中和标记之的距离样式*/
    html, body, h1, form, fieldset, legend, ol, li {
        margin: 0;
        padding: 0;
    }
    /*定义<body>标记样式*/
    body {
        background: #ffffff;
        color: #111111;
        /*font-family: Georgia, "Times New Roman", Times, serif;*/
        padding-left: 20px;

    }
    /*定义付费内容的样式*/
    form#payment {
        background: #488bd5;
        -webkit-border-radius: 5px;
        border-radius: 5px;
        padding: 20px;
        width: 400px;
        margin:auto;
    }
    form#payment fieldset {
        border: none;
        margin-bottom: 10px;
    }
    form#payment fieldset:last-of-type { margin-bottom: 0; }
    form#payment legend {
        color: #384313;
        font-size: 16px;
        font-weight: bold;
        padding-bottom: 10px;
        text-shadow: 0 1px 1px #ffffff;
    }
    /*form#payment > fieldset > legend:before {*/
        /*content: "Step " counter(fieldsets) ": ";*/
        /*counter-increment: fieldsets;*/
    /*}*/
    form#payment fieldset fieldset legend {
        color: #111111;
        font-size: 13px;
        font-weight: normal;
        padding-bottom: 0;
    }
    form#payment ol li {
        background: #1fb8cf;
        background: rgba(255, 255, 255, .3);
        border-color: #e3ebc3;
        border-color: rgba(255, 255, 255, .6);
        border-style: solid;
        border-width: 2px;
        -webkit-border-radius: 5px;
        line-height: 30px;
        list-style: none;
        padding: 5px 10px;
        margin-bottom: 2px;
    }
    form#payment ol ol li {
        background: none;
        border: none;
        float: left;
    }
    form#payment label {
        float: left;
        font-size: 13px;
        width: 110px;
    }
    form#payment fieldset fieldset label {
        background: none no-repeat left 50%;
        line-height: 20px;
        padding: 0 0 0 30px;
        width: auto;
    }
    form#payment fieldset fieldset label:hover { cursor: pointer; }
    form#payment input:not([type=radio]), form#payment textarea {
        background: #ffffff;
        border: #FC3 solid 1px;
        -webkit-border-radius: 3px;
        /*font: italic 13px Georgia, "Times New Roman", Times, serif;*/
        outline: none;
        padding: 5px;
        width: 200px;
    }
    form#payment input:not([type=submit]):focus, form#payment textarea:focus {
        background: #eaeaea;
        border: #F00 solid 1px;
    }
    form#payment input[type=radio] {
        float: left;
        margin-right: 5px;
    }
</style>
<head>
    <title>注册页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script>
        function sumbit() {
            alert("hello");
//            var ui =document.getElementById("usernametext");
//            ui.style.display="";//display为空的话会好使，为block会使后边的空间换行
        }
    </script>
    <%--<script type="text/javascript">--%>
        <%--window.onload=function () {--%>
            <%--var ui=document.getElementById("usernametext");--%>
            <%--ui.style.display="none";--%>
        <%--}--%>
    <%--</script>--%>
</head>
<body>
<form id="payment">
    <fieldset>
        <legend>初次使用信息注册</legend>
        <ol>
            <li>
                <label for="name">用户姓名：</label>
                <input id="name" name="name" type="text" placeholder="请输入姓名" required autofocus>
            </li>
            <li>
                <label for="userid">身份证号：</label>
                <input id="userid" name="userid" type="text" placeholder="例：331021***" required>
            </li>
            <li>
                <label for="policedid">警  号：</label>
                <input id="policedid" name="policedid" type="text" placeholder="例：33170531" required>
            </li>
            <li>
                <label for="email">邮件地址：</label>
                <input id="email" name="email" type="email" placeholder="例：example@tzs.zj" required>
            </li>
            <li>
                <label for="longnum">长    号：</label>
                <input id="longnum" name="longnum" type="tel" placeholder="例：139***" required>
            </li>
            <li>
                <label for="shortnum">短    号：</label>
                <input id="shortnum" name="shortnum" type="tel" placeholder="例：646110" required>
            </li>
            <%--<li id="usernametext">--%>
                <%--<label for="username">用户名：</label>--%>
                <%--<input id="username" name="username" type="text" placeholder="例：646110" required>--%>
            <%--</li>--%>
        </ol>
    </fieldset>
    <fieldset>
        <legend>单位信息：</legend>
        <ol>
            <li>
                <label for="station">所属分局：</label>
                <select name="station" id="station" size="1" required>
                    <option value="玉环市公安局">玉环市公安局</option>

                </select>
                <%--<textarea id="address" name="address" rows="1" required></textarea>--%>
            </li>
            <li>
                <label for="area">所属单位：</label>
                <select name="area" id="area" size="1" required>
                    <option value="网警大队">网警大队</option>
                    <option value="玉城所">玉城所</option>
                    <option value="坎门所">坎门所</option>
                    <option value="楚门所">楚门所</option>
                </select>
                <%--<textarea id="address" name="address" rows="1" required></textarea>--%>
            </li>

            <%--<li>--%>
                <%--<label for="postcode">邮政编码：</label>--%>
                <%--<input id="postcode" name="postcode" type="text" required>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<label for="country">国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;家：</label>--%>
                <%--<input id="country" name="country" type="text" required>--%>
            <%--</li>--%>
        </ol>
    </fieldset>
    <fieldset>
        <legend>职位信息</legend>
        <ol>
            <%--<li>--%>
                <%--<fieldset>--%>
                    <%--<legend>职位性质</legend>--%>
                    <%--<ol>--%>
                        <%----%>
                    <%--</ol>--%>
                <%--</fieldset>--%>
            <%--</li>--%>
                <li>
                    <label for="usertype">人员角色：</label>
                    <select name="usertype" id="usertype" size="1" required>
                        <option value="1">办案民警</option>
                        <option value="2">办案单位配侦审批人员</option>
                        <option value="3">网警配侦审批人员</option>
                        <option value="4">网警配侦人员</option>
                        <option value="5">局审批人员</option>
                    </select>
                    <%--<textarea id="address" name="address" rows="1" required></textarea>--%>
                </li>
            <%--<li>--%>
                <%--<label for="cardnumber">银行卡号：</label>--%>
                <%--<input id="cardnumber" name="cardnumber" type="number" required>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<label for="secure">验 证 码：</label>--%>
                <%--<input id="secure" name="secure" type="number" required>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<label for="namecard">持 卡 人：</label>--%>
                <%--<input id="namecard" name="namecard" type="text" placeholder="确定是否该卡用户！" required>--%>
            <%--</li>--%>
        </ol>
    </fieldset>
    <fieldset>
        <button type="button" class="center-block" onclick="sumbit()">注  册</button>
    </fieldset>
</form>
</body>
</html>
