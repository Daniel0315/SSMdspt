
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <title>注册</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="/static/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
    <link href="/static/css/dlstyle.css" rel="stylesheet" type="text/css">
    <script src="/static/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="/static/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <style>
        #checkuname{
            padding:0px 20px;
            color: #FF0000;
        }
        #checkpass1{
            padding:0px 20px;
            color: #FF0000;
        }
        #checkpass2{
            padding:0px 20px;
            color: #FF0000;
        }
    </style>
</head>

<body>

<div class="login-boxtitle">
    <a href=""><img alt="" src="/static/images/logobig.png" /></a>
</div>

<div class="res-banner">
    <div class="res-main">
        <div class="login-banner-bg"><span></span><img src="/static/images/big.jpg" /></div>
        <div class="login-box">

            <div class="am-tabs" id="doc-my-tabs">
                <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
                    <li class="am-active"><a href="">注册</a></li>
                </ul>

                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-active">
                        <form method="post" id="register" action="/user/register">

                            <div class="user-email">
                                <label for="username"><i class="am-icon-envelope-o"></i></label>
                                <input type="text" name="username" id="username" placeholder="请输入用户名">
                            </div>
                                <span id="checkuname"></span>
                            <div class="user-pass">
                                <label for="password"><i class="am-icon-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="设置密码">
                            </div>
                            <span id="checkpass1"></span>
                            <div class="user-pass">
                                <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
                                <input type="password" name="passwordRepeat" id="passwordRepeat" placeholder="确认密码">
                            </div>
                                <span id="checkpass2"></span>

                        </form>
                    </div>
                        <div class="am-cf">
                            <input type="button" id="submit" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
                        </div>

                        <hr>
                    </div>

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
</div>
<script src="/static/js/jquery-3.3.1.min.js"></script>
</body>
</html>
<script>
    $(function () {
        var isregister=false;
        $("#username").blur(function () {
            var data=$("input[id='username']").val();
            var res=/^[a-zA-z0-9]{6,11}$/;
            if (res.test(data)){
                $("#checkuname").text("");
                isregister=true;
            } else {
                $("#checkuname").text("请输入6-11位数字或字母");
                isregister=false;
            }

        })
        $("#password").blur(function () {
            var data=$("input[id='password']").val();
            var res=/^[a-zA-z0-9]{6,13}$/;
            if (res.test(data)){
                $("#checkpass1").text("");
                isregister=true;
            } else {
                $("#checkpass1").text("请输入6-13位数字或字母");
                isregister=false;
            }
        })
        $("#passwordRepeat").blur(function () {
            var passre=$("input[id='passwordRepeat']").val();
            var pass=$("input[id='password']").val();
            if (pass!=passre){
                $("#checkpass2").text("两次密码不一致");
                isregister=false;
            } else {
                $("#checkpass2").text("");
                isregister=true;
            }
        })

        $("#username").blur(function () {
            $.ajax({
                url:"/user/checkuname",
                type:"post",
                data:"username="+$("input[name='username']").val(),
                success:function (result) {
                    if (result=="NOT_USERNAME"){
                        $("#checkuname").text("");
                        isregister=true;
                    }
                    if (result=="EXIS_USERNAME"){
                        $("#checkuname").text("用户名已存在");
                        isregister=false;
                    }
                }
            })

        })

        $("#submit").click(function () {
            if (isregister){
                $("#register").submit()
            }
        })
    })
</script>
