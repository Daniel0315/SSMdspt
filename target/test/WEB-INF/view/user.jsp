<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>用户管理</title>
  <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/static/css/style.css">
  <style>
    .uname{
      color: #985f0d;
      font-size: 30px;
      width: 20%;
      height: 100px;
      padding: 20px;
      position: absolute;
      top: 30px;
      left: 1px;
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
      <h2 class="text-center">欢迎来到宇科技</h2>
      <h3 class="text-center">用户信息</h3>
      <div class="text-center uname"><%--<c:if test="${sessionScope.user==null}">
        对不起,您未登录
      </c:if>
        <c:if test="${sessionScope.user!=null}">
          你好! ${sessionScope.user.uname}
        </c:if>--%></div>
    </div>
    <div class="hbody">
      <div class="container">
        <div class="row head"></div>
        <form action="selectByName" method="post">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <input type="text" class="form-control" name="selectUname" placeholder="请输入账号......">
                        <span class="input-group-btn">
        <button class="btn btn-default" type="submit">Go!</button>
      </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
            </div>
        </form>
          <table class="table">
            <thead>
            <tr>
              <th class="text-center"><input type="checkbox"></th>
              <th class="text-center">#</th>
              <th class="text-center">账户</th>
              <th class="text-center">密码</th>
              <th class="text-center">性别</th>
              <th class="text-center">收货人</th>
              <th class="text-center">收货地址</th>
              <th class="text-center">收货电话</th>
              <th class="text-center">操作</th>
            </tr>
            </thead>
            <tbody id="data">
          <c:forEach items="${user}" var="page" varStatus="i">
             <tr>
               <td class="text-center"><input type="checkbox"></td>
               <td class="text-center">${i.index+1}</td>
               <td class="text-center">${page.uname}</td>
               <td class="text-center">${page.upwd}</td>
               <td class="text-center">${page.usex}</td>
               <td class="text-center">${page.receiver}</td>
               <td class="text-center">${page.raddress}</td>
               <td class="text-center">${page.rtelephone}</td>
               <td class="text-center"> <button type="button" class="btn btn-primary" onclick="location.href='updateuserview?uname=${page.uname}'">修改</button>
                 <button type="button" class="btn btn-danger" onclick="location.href='deleteuser?uname=${page.uname}'">删除</button>
               </td>
             </tr>
           </c:forEach>
            </tbody>
          </table>
        <div class="row">
          <div class="col-sm-9">
            <button type="button" class="btn btn-primary" onclick="location.href='/user/adduserview'">增加</button>

          </div>
          <div class="col-sm-3">
            <nav aria-label="Page navigation">
              <ul class="pagination">
                <c:if test="${pageInfo.isFirstPage}">
                  <li class="disabled">
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                </c:if>

                <c:if test="${!pageInfo.isFirstPage}">
                  <li>
                    <a href="/user/user?pageNum=${pageInfo.prePage}" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                </c:if>

                <c:forEach items="${pageInfo.navigatepageNums}" var="num">
                  <li <c:if test="${pageInfo.pageNum==num}">class="active"</c:if>><a href="/user/user?pageNum=${num}">${num}</a></li>
                </c:forEach>


                <c:if test="${pageInfo.isLastPage}">
                  <li class="disabled">
                    <a href="" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </c:if>
                <c:if test="${!pageInfo.isLastPage}">
                  <li>
                    <a href="/user/user?pageNum=${pageInfo.nextPage}" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </c:if>

              </ul>
            </nav>
          </div>
        </div>
        <div class="row foot"></div>
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
function last() {
        if (current==1){
            window.location.href="vip?pageNum="+current;
            return
        }
        window.location.href="vip?pageNum="+(current-1);
}
function next(current,pageNumber) {
    if (current==pageNumber){
        window.location.href="vip?pageNum="+current;
        return
    }
    window.location.href="vip?pageNum="+(current+1);
}

window.onload=function (ev) {
    $.ajax({
        url:"user",
        dataType:"json",
        success:function (result) {
            
        }
    })
}
</script>


