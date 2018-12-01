<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/style.css">
</head>
<body>
<div class="body">
    <div class="background"></div>
    <div class="content">
        <div class="head">
            <h2 class="text-center">欢迎来到宇科技</h2>
            <h3 class="text-center">用户添加</h3>
        </div>
        <div class="hbody">
            <div class="container">
                <div class="row head"></div>
                <div class="row">
                    <form class="form-horizontal" action="/user/adduser" method="post" >
                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="uname">用户账号</label>
                            <div class=" form-group col-sm-6">
                                <input type="text" name="uname" class="form-control" id="uname">
                                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                <span id="inputSuccess3Statu" class="sr-only">(success)</span>
                            </div>
                        </div>

                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="upwd">密码</label>
                            <div class=" form-group col-sm-6">
                                <input type="password" name="upwd" class="form-control" id="upwd">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
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