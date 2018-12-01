<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>vip管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/style.css">
    <style>
        .back{
            background: url("/static/images/logo2.jpg");
            width: 572px;
            height: 412px;
            background-size: 100% auto;
            background-repeat: no-repeat;
            position: fixed;
            left: 850px;
            top: 125px;
        }
    </style>
</head>
<body>
<div class="body">
    <div class="content">
        <div class="head">
            <div class="back"></div>
            <h2 class="text-center">欢迎来到宇科技</h2>
            <h3 class="text-center">修改用户信息</h3>
        </div>
        <div class="hbody">
            <div class="container">
                <div class="null"></div>
                <div class="null"></div>
                <div class="null"></div>
                <div class="null"></div>
                <form class="form-horizontal" action="/user/updateuser" id="update"  method="get">
                    <div class="form-group">

                        <label for="receiver" class="col-sm-2 control-label">收货人姓名</label>
                        <div class="col-sm-6">
                            <input type="hidden" name="uname" value="${user.uname}">
                            <input type="text" class="form-control" id="receiver" name="receiver" placeholder="收货人姓名" value="${user.receiver}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="raddress" class="col-sm-2 control-label">收货地址</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="raddress" name="raddress" placeholder="收货地址" value="${user.raddress}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="rtelephone" class="col-sm-2 control-label">收货电话</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="rtelephone" name="rtelephone" placeholder="收货电话" value="${user.rtelephone}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ubirthday" class="col-sm-2 control-label">生日</label>
                        <div class="col-sm-6">
                            <input type="date" class="form-control" id="ubirthday" name="ubirthday" value="${user.ubirthday}">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-6">
                            <label class="radio-inline">
                                <input type="radio" name="usex" id="inlineRadio1" value="男"<c:if test="${user.usex=='男'}">checked</c:if>>> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="usex" id="inlineRadio2" value="女" <c:if test="${user.usex=='女'}">checked</c:if>>> 女
                            </label>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" id="submit" class="btn btn-default">Sign in</button>
                        </div>
                    </div>
                </form>
                <div class="row foot"></div>
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
    var ifsubmit=false;
    $(function () {
        /*$("#rtelephone").blur(function () {
            var value=$("#rtelephone").val();
            var regex=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
            if (regex.test(value)){
                ifsubmit=true;
            }else {
                alert("请输入11位数字的手机号");
                ifsubmit=false;
            }
        })*/

        /*$("#submit").click(function () {
            if (ifsubmit==true){
                $.ajax({
                    url:"/user/updateuser",
                    type:"get",
                    data:$("#update").serialize(),
                    success:function (reulet) {

                    }
                })
            }
        })*/
    })
</script>