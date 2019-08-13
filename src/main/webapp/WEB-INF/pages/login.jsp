<%--
  Created by IntelliJ IDEA.
  User: neustu
  Date: 2019/8/13
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="ui-page-login">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <link href="../../asset/css/mui.min.css" rel="stylesheet" />
    <link href="../../asset/css/style.css" rel="stylesheet" />
</head>

<body>
<header class="mui-bar mui-bar-nav">
    <h1 class="mui-title">登录</h1>
</header>
<div class="mui-content">
    <form id='login-form' class="mui-input-group" action="" method="post">
        <table>
            <tr class="mui-input-row">
                <td class="label">账号</td>
                <td><input id='account' name="username" type="text" class="mui-input-clear mui-input" placeholder="请输入账号"></td>
            </tr>
            <tr>
                <td class="mui-space"></td>
            </tr>
            <tr class="mui-input-row">
                <td class="label">密码</td>
                <td ><input id='password' name="password" type="password" class="mui-input-clear mui-input" placeholder="请输入密码"></td>
                <td class="m"></td>
            </tr>
        </table>
    </form>
    <div class="mui-content-padded">
        <input type="button" id='login' class="mui-btn mui-btn-block mui-btn-primary" value="登录"/>
        <div id="msg"></div>
        <div class="link-area"><a id='reg'>注册账号</a> <span class="spliter">|</span> <a id='forgetPassword'>忘记密码</a>
        </div>
    </div>
</div>
<script src="../../asset/js/mui.min.js"></script>
<script src="../../asset/js/mui.enterfocus.js"></script>
<script src="../../asset/js/app.js"></script>
<script src="${pageContext.request.contextPath}/asset/js/jquery-3.4.1.min.js"></script>
<script>
    $(function () {
        $(":button").click(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}",
                data:{
                    username:$("#account").val(),
                    password:$("#password").val()
                },
                dataType:"json",
                success:function (data) {
                    if (data.msg=="success")
                        location="index.action";
                    else
                        $("#msg").html("账号或密码错误");
                },
                error:function () {
                    alert("系统异常");
                }
            });
        });
    })
</script>
</body>

</html>
