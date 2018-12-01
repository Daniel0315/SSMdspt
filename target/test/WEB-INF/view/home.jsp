<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>宇科技后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/style.css">
    <style>
        .uname{
            color: #985f0d;
            font-size: 20px;
            width: 100%;
            height: 100px;
            padding: 20px;
        }
        .but{
            position: absolute;
            right: 1px;

        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <p class="navbar-brand col-lg-2" id="username" href="#">
        <c:if test="${auto==null}">
            对不起,您未登录
        </c:if>
        <c:if test="${auto!=null}">
            你好! ${auto.uname}
        </c:if>
    </p>
    <a class="navbar-brand col-lg-1" href="/user/home">我的主页</a>
   <c:forEach items="${auto.raids}" var="auto">
       <a class="navbar-brand col-lg-2" href="${auto.url}">${auto.acontent}</a>
   </c:forEach>
        <a class="navbar-brand col-lg-1" href="#">退出</a>

</nav>
<div class="body">

    <div class="content">
        <div class="head">
            <h2 class="text-center">欢迎来到宇科技</h2><h3 class="text-center">后台管理系统</h3>
        </div>
        <div class="hbody">
            <div class="img">
                <div class="leftbutton"><i><</i></div>
                <div class="rightbutton"><i>></i></div>
            </div>
        </div>

    </div>
    <div class="foot">
        <p class="text-center">Copyright © 2018. 宇科技 All rights reserved</p>
    </div>
</div>



<script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/static/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
<script>
    $(function () {
        var set;
        var i=2;
        $(".leftbutton").click(function () {
            clearInterval(set);
            $(".img").css("background-image","url(/static/images/ad"+i+".jpg)");
            i++;
            if (i>8){
                i=1;
            }
        })
        $(".rightbutton").click(function () {
            clearInterval(set);

            $(".img").css("background-image","url(/static/images/ad"+i+".jpg)");
            i--;
            if (i<1){
                i=8;
            }
        })
        $(".img").mouseover(function () {
            set=setInterval(function () {
                $(".img").css("background-image","url(/static/images/ad"+i+".jpg)");
                i++;
                if (i>8){
                    i=1;
                }
            },1000)
        })
        $(".img").mouseout(function () {
            clearInterval(set);
        })
        $(".leftbutton").mouseover(function () {
            clearInterval(set);
        })
        $(".rightbutton").mouseover(function () {
            clearInterval(set);
        })

    })
</script>
