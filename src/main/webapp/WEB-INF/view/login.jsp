<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="/static/AmazeUI-2.4.2/assets/css/amazeui.css" />
    <link rel="stylesheet" href="/static/css/dlstyle.css">
    <style>
        #check{
            padding:0px 20px;
            color: #FF0000;
        }
    </style>
</head>

<body>

<div class="login-boxtitle">
    <a href="#"><img alt="logo" src="/static/images/logobig.png" /></a>
</div>

<div class="login-banner">
    <div class="login-main">
        <div class="login-banner-bg"><span></span><img src="/static/images/big.jpg" /></div>
        <div class="login-box">

            <h3 class="title">登录宇科技</h3>

            <div class="clear"></div>

            <div class="login-form">
                <form id="login" method="post">
                    <div class="user-name">
                        <label for="user"><i class="am-icon-user"></i></label>
                        <input type="text" name="username" id="user" placeholder="用户名">
                    </div>
                    <div class="user-pass">
                        <label for="password"><i class="am-icon-lock"></i></label>
                        <input type="password" name="password" id="password" placeholder="请输入密码">
                    </div>
                    <div class="user-name">
                        <span id="check"></span>
                    </div>
                </form>
            </div>

            <div class="login-links">
                <label for="remember-me"><input id="remember-me" type="checkbox">记住密码</label>
                <a href="#" class="am-fr">忘记密码</a>
                <a href="/user/registerview" class="zcnext am-fr am-btn-default">注册</a>
                <br />
            </div>
            <div class="am-cf">
                <input type="button" id="sub" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm">
            </div>

        </div>
    </div>
</div>


<div class="footer ">
    <div class="footer-hd ">
        <p>
            <a href="# ">宇科技</a>
            <b>|</b>
            <a href="# ">商城首页</a>
            <b>|</b>
            <a href="# ">支付宝</a>
            <b>|</b>
            <a href="# ">物流</a>
        </p>
    </div>
    <div class="footer-bd ">
        <p>
            <a href="# ">关于宇科技</a>
            <a href="# ">合作伙伴</a>
            <a href="# ">联系我们</a>
            <a href="# ">网站地图</a>
            <em>© 2018-2025 yv.com - Collect from 宇科技商城</em>
        </p>
    </div>
</div>
<script src="/static/js/jquery-3.3.1.min.js"></script>
</body>

</html>
<script>
    $(function () {
        $("#sub").click(function () {
            $.ajax({
                url:"/user/login",
                type:"get",
                data:$("#login").serialize(),
                success:function (result) {
                    if (result=="NO_USERNAME"){
                        $("#check").text("用户名不存在");
                    }
                    if (result=="ADMIN_LOGIN_SUCCESS"){
                        $("#check").css("color","#b474fe");
                        $("#check").text("正在登录中...");
                        setTimeout(function () {
                            $("#check").text("登录成功");
                        },2000);
                            setTimeout(function () {
                                window.location.href="/user/home";
                            },2500);
                    }
                    if (result=="USER_LOGIN_SUCCESS"){
                        $("#check").css("color","#b474fe");
                        $("#check").text("正在登录中...");
                        setTimeout(function () {
                            $("#check").text("登录成功");
                        },2000);
                            setTimeout(function () {
                                window.location.href="/shop/yvhome";
                            },2500);
                    }

                }
            })
        })
    })
</script>