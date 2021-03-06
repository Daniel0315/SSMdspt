<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品添加</title>
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
            <h3 class="text-center">商品添加</h3>
        </div>
        <div class="hbody">
            <div class="container">
                <div class="row head"></div>
                <div class="row">
                    <form class="form-horizontal" action="/goods/addgoods" method="post" enctype="multipart/form-data">
                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="gname">商品名称</label>
                            <div class=" form-group col-sm-6">
                                <input type="text" name="gname" class="form-control" id="gname">
                                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                <span id="inputSuccess3Statu" class="sr-only">(success)</span>
                            </div>
                        </div>

                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="cid">类型</label>
                            <div class=" form-group col-sm-6">
                                <select class="form-control" name="cid" id="cid">
                                </select>
                            </div>
                        </div>

                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="gprice">商品单价</label>
                            <div class="form-group col-sm-6">
                                <label class="sr-only" for="gprice">Amount (in dollars)</label>
                                <div class="input-group">
                                    <div class="input-group-addon">$</div>
                                    <input type="text" class="form-control" name="gprice" id="gprice" placeholder="Amount">
                                    <div class="input-group-addon">.00</div>
                                </div>
                            </div>
                        </div>


                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="gsalesvolume">销售量</label>
                            <div class=" form-group col-sm-6">
                                <input type="text" class="form-control" id="gsalesvolume" name="gsalesvolume" aria-describedby="inputSuccess3Status">
                                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                <span id="inputSuccess3Stat" class="sr-only">(success)</span>
                            </div>
                        </div>

                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="grepertory">商品库存</label>
                            <div class=" form-group col-sm-6">
                                <input type="text" class="form-control" id="grepertory" name="grepertory" aria-describedby="inputSuccess3Status">
                                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                <span id="inputSuccess3Status" class="sr-only">(success)</span>
                            </div>
                        </div>


                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="gstandard">商品规格</label>
                            <div class=" form-group col-sm-6">
                                        <textarea rows="5" cols="5" class="form-control" name="gstandard" id="gstandard" aria-describedby="inputSuccess3Status">
                                        </textarea>
                            </div>
                        </div>

                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="gremarks">备注</label>
                            <div class=" form-group col-sm-6">
                                        <textarea rows="5" cols="5" class="form-control" name="gremarks" id="gremarks" aria-describedby="inputSuccess3Status">
                                        </textarea>
                            </div>
                        </div>

                        <div class="form-group has-success has-feedback">
                            <label class="control-label col-sm-2" for="gimg">文件上传</label>
                            <div class=" form-group col-sm-6">
                                <input name="gimg" type="file" id="gimg" class="btn-primary pos">
                                <button type="button" class="btn btn-primary pos wen">文件上传</button>

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
<script>
    $(function () {
        /*当点击图片上传时触发图片上传控件*/
        $(".wen").click(function () {
            $("#gimg").click();
        })

        /**
         * 通过ajax前台获取类型
         */
        $.ajax({
            url:"/goods/typelist",
            type:"get",
            dataType:"json",
            success:function (result) {
                var str="";
                $(result).each(function () {
                    str+="<option value='"+this.tid+"'>"+this.tname+"</option>";
                })
                $("select[name='cid']").html(str);
            }
            
        })
        
    })
</script>
