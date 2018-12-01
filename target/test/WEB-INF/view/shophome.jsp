<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>首页</title>

    <link href="/static/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="/static/images/logo.jpg" type="image/x-icon">
    <link href="/static/basic/css/demo.css" rel="stylesheet" type="text/css" />

    <link href="/static/css/hmstyle.css" rel="stylesheet" type="text/css" />
    <script src="/static/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="/static/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>

<body>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <a href="#" target="_top" class="h">亲，请登录</a>
                    <a href="#" target="_top">免费注册</a>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
            </div>
            <div class="topMessage mini-cart">
                <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
        </ul>
    </div>

    <!--悬浮搜索框-->

    <div class="nav white">
        <div class="logo"><img src="/static/images/logo.png" /></div>
        <div class="logoBig">
            <li><img src="/static/images/logobig.png" /></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="#"></a>
            <form>
                <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>
<b class="line"></b>
<div class="shopNav">
    <div class="slideall" style="height: auto;">

        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="#">首页</a></li>
                <li class="qc"><a href="#">闪购</a></li>
                <li class="qc"><a href="#">限时抢</a></li>
                <li class="qc"><a href="#">团购</a></li>
                <li class="qc last"><a href="#">大包装</a></li>
            </ul>
            <div class="nav-extra">
                <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
                <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
            </div>
        </div>

        <div class="bannerTwo">
            <!--轮播 -->
            <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
                <ul class="am-slides">
                    <li class="banner1"><a href="introduction.html"><img src="/static/images/ad5.jpg" /></a></li>
                    <li class="banner2"><a><img src="/static/images/ad6.jpg" /></a></li>
                    <li class="banner3"><a><img src="/static/images/ad7.jpg" /></a></li>
                    <li class="banner4"><a><img src="/static/images/ad8.jpg" /></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>

        <!--侧边导航 -->
        <div id="nav" class="navfull" style="position: static;">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">

                    <div class="category" style="box-shadow:none ;margin-top: 2px;">
                        <ul class="category-list navTwo" id="js_climit_li">
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">蛋糕</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">点心</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>

                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="呵官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
                                                        <dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
                                                        <dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="饼干">饼干</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="薯片">薯片</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">虾条</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
                                                        <dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
                                                        <dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
                                                        <dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
                                                        <dd><a rel="nofollow" title="玛狮路男装旗舰店" target="_blank" href="#" rel="nofollow"><span >玛狮路男装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="劳威特品牌男装" target="_blank" href="#" rel="nofollow"><span >劳威特品牌男装</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/meat.png"></i><a class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="猪肉脯">猪肉脯</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="牛肉丝">牛肉丝</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="小香肠">小香肠</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
                                                        <dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
                                                        <dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
                                                        <dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
                                                        <dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
                                                        <dd><a rel="nofollow" title="猫儿朵朵 " target="_blank" href="#" rel="nofollow"><span >猫儿朵朵 </span></a></dd>
                                                        <dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="豆干">豆干</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="干笋">干笋</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="鸭脖">鸭脖</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
                                                        <dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
                                                        <dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/nut.png"></i><a class="ml-22" title="坚果、炒货">坚果/炒货</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">坚果</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">锅巴</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="呵呵嘿官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵呵嘿官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
                                                        <dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
                                                        <dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
                                                        <dd><a rel="nofollow" title="华伊阁旗舰店" target="_blank" href="#" rel="nofollow"><span >华伊阁旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="独家折扣旗舰店" target="_blank" href="#" rel="nofollow"><span >独家折扣旗舰店</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="糖果">糖果</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蜜饯">蜜饯</span></dt>
                                                        <dd><a title="猕猴桃干" href="#"><span>猕猴桃干</span></a></dd>
                                                        <dd><a title="糖樱桃" href="#"><span>糖樱桃</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
                                                        <dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
                                                        <dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
                                                        <dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/chocolate.png"></i><a class="ml-22" title="巧克力">巧克力</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">巧克力</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">果冻</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
                                                        <dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
                                                        <dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
                                                        <dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
                                                        <dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
                                                        <dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/fish.png"></i><a class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="海带丝">海带丝</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="小鱼干">小鱼干</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="鱿鱼丝">鱿鱼丝</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
                                                        <dd><a rel="nofollow" title="炫点服饰" target="_blank" href="#" rel="nofollow"><span >炫点服饰</span></a></dd>
                                                        <dd><a rel="nofollow" title="雪茵美内衣厂批发" target="_blank" href="#" rel="nofollow"><span >雪茵美内衣厂批发</span></a></dd>
                                                        <dd><a rel="nofollow" title="金钻夫人" target="_blank" href="#" rel="nofollow"><span >金钻夫人</span></a></dd>
                                                        <dd><a rel="nofollow" title="伊美莎内衣" target="_blank" href="#" rel="nofollow"><span  class="red" >伊美莎内衣</span></a></dd>
                                                        <dd><a rel="nofollow" title="粉客内衣旗舰店" target="_blank" href="#" rel="nofollow"><span >粉客内衣旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="泽芳行旗舰店" target="_blank" href="#" rel="nofollow"><span >泽芳行旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="彩婷" target="_blank" href="#" rel="nofollow"><span  class="red" >彩婷</span></a></dd>
                                                        <dd><a rel="nofollow" title="黛兰希" target="_blank" href="#" rel="nofollow"><span >黛兰希</span></a></dd>
                                                        <dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
                                                        <dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/tea.png"></i><a class="ml-22" title="花茶、果茶">花茶/果茶</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">蛋糕</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">点心</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a title="今生只围你" target="_blank" href="#" rel="nofollow"><span >今生只围你</span></a></dd>
                                                        <dd><a title="忆佳人" target="_blank" href="#" rel="nofollow"><span  class="red" >忆佳人</span></a></dd>
                                                        <dd><a title="斐洱普斯" target="_blank" href="#" rel="nofollow"><span  class="red" >斐洱普斯</span></a></dd>
                                                        <dd><a title="聚百坊" target="_blank" href="#" rel="nofollow"><span  class="red" >聚百坊</span></a></dd>
                                                        <dd><a title="朵朵棉织直营店" target="_blank" href="#" rel="nofollow"><span >朵朵棉织直营店</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/package.png"></i><a class="ml-22" title="品牌、礼包">品牌/礼包</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="大包装">大包装</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="两件套">两件套</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a title="琳琅鞋业" target="_blank" href="#" rel="nofollow"><span >琳琅鞋业</span></a></dd>
                                                        <dd><a title="宏利鞋业" target="_blank" href="#" rel="nofollow"><span >宏利鞋业</span></a></dd>
                                                        <dd><a title="比爱靓点鞋业" target="_blank" href="#" rel="nofollow"><span >比爱靓点鞋业</span></a></dd>
                                                        <dd><a title="浪人怪怪" target="_blank" href="#" rel="nofollow"><span >浪人怪怪</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </li>

                            <!--比较多的导航	-->
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="饼干">饼干</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="薯片">薯片</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">虾条</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
                                                        <dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
                                                        <dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
                                                        <dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
                                                        <dd><a rel="nofollow" title="玛狮路男装旗舰店" target="_blank" href="#" rel="nofollow"><span >玛狮路男装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="劳威特品牌男装" target="_blank" href="#" rel="nofollow"><span >劳威特品牌男装</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/meat.png"></i><a class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="猪肉脯">猪肉脯</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="牛肉丝">牛肉丝</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="小香肠">小香肠</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
                                                        <dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
                                                        <dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
                                                        <dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
                                                        <dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
                                                        <dd><a rel="nofollow" title="猫儿朵朵 " target="_blank" href="#" rel="nofollow"><span >猫儿朵朵 </span></a></dd>
                                                        <dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="豆干">豆干</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="干笋">干笋</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="鸭脖">鸭脖</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
                                                        <dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
                                                        <dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/nut.png"></i><a class="ml-22" title="坚果、炒货">坚果/炒货</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">坚果</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">锅巴</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="呵呵嘿官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵呵嘿官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
                                                        <dd><a rel="nofollow" title="红e·艾菲妮" target="_blank" href="#" rel="nofollow"><span >红e·艾菲妮</span></a></dd>
                                                        <dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="杭派女装批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派女装批发网</span></a></dd>
                                                        <dd><a rel="nofollow" title="华伊阁旗舰店" target="_blank" href="#" rel="nofollow"><span >华伊阁旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="独家折扣旗舰店" target="_blank" href="#" rel="nofollow"><span >独家折扣旗舰店</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="糖果">糖果</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蜜饯">蜜饯</span></dt>
                                                        <dd><a title="猕猴桃干" href="#"><span>猕猴桃干</span></a></dd>
                                                        <dd><a title="糖樱桃" href="#"><span>糖樱桃</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="YYKCLOT" target="_blank" href="#" rel="nofollow"><span  class ="red" >YYKCLOT</span></a></dd>
                                                        <dd><a rel="nofollow" title="池氏品牌男装" target="_blank" href="#" rel="nofollow"><span  class ="red" >池氏品牌男装</span></a></dd>
                                                        <dd><a rel="nofollow" title="男装日志" target="_blank" href="#" rel="nofollow"><span >男装日志</span></a></dd>
                                                        <dd><a rel="nofollow" title="索比诺官方旗舰店" target="_blank" href="#" rel="nofollow"><span >索比诺官方旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="onTTno傲徒" target="_blank" href="#" rel="nofollow"><span  class ="red" >onTTno傲徒</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡斯郎世家批发城" target="_blank" href="#" rel="nofollow"><span  class ="red" >卡斯郎世家批发城</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li >
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img src="/static/images/chocolate.png"></i><a class="ml-22" title="巧克力">巧克力</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">巧克力</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蛋糕">果冻</span></dt>
                                                        <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                        <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                        <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                        <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                        <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                        <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                        <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                        <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                        <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort"><dt><span>实力商家</span></dt>
                                                        <dd><a rel="nofollow" title="花颜巧语 " target="_blank" href="#" rel="nofollow"><span  class="red" >花颜巧语 </span></a></dd>
                                                        <dd><a rel="nofollow" title="糖衣小屋" target="_blank" href="#" rel="nofollow"><span >糖衣小屋</span></a></dd>
                                                        <dd><a rel="nofollow" title="卡拉迪克  " target="_blank" href="#" rel="nofollow"><span  class="red" >卡拉迪克  </span></a></dd>
                                                        <dd><a rel="nofollow" title="暖春童话 " target="_blank" href="#" rel="nofollow"><span >暖春童话 </span></a></dd>
                                                        <dd><a rel="nofollow" title="华盛童装批发行 " target="_blank" href="#" rel="nofollow"><span >华盛童装批发行 </span></a></dd>
                                                        <dd><a rel="nofollow" title="奈仕华童装旗舰店" target="_blank" href="#" rel="nofollow"><span >奈仕华童装旗舰店</span></a></dd>
                                                        <dd><a rel="nofollow" title="斑蒂尼BONDYNI" target="_blank" href="#" rel="nofollow"><span  class="red" >斑蒂尼BONDYNI</span></a></dd>
                                                        <dd><a rel="nofollow" title="童衣阁" target="_blank" href="#" rel="nofollow"><span  class="red" >童衣阁</span></a></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--导航 -->
        <script type="text/javascript">
            (function() {
                $('.am-slider').flexslider();
            });
            $(document).ready(function() {
                $("li").hover(function() {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function() {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })
        </script>


        <!--小导航 -->
        <div class="am-g am-g-fixed smallnav">
            <div class="am-u-sm-3">
                <a href="sort.html"><img src="/static/images/navsmall.jpg" />
                    <div class="title">商品分类</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="/static/images/huismall.jpg" />
                    <div class="title">大聚惠</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="/static/images/mansmall.jpg" />
                    <div class="title">个人中心</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="/static/images/moneysmall.jpg" />
                    <div class="title">投资理财</div>
                </a>
            </div>
        </div>


        <!--各类活动-->
        <div class="row">
            <li><a><img src="/static/images/row1.jpg"/></a></li>
            <li><a><img src="/static/images/row2.jpg"/></a></li>
            <li><a><img src="/static/images/row3.jpg"/></a></li>
            <li><a><img src="/static/images/row4.jpg"/></a></li>
        </div>
        <div class="clear"></div>
        <!--走马灯 -->

        <div class="marqueenTwo">
            <span class="marqueen-title"><i class="am-icon-volume-up am-icon-fw"></i>商城头条<em class="am-icon-angle-double-right"></em></span>
            <div class="demo">

                <ul>
                    <li class="title-first"><a target="_blank" href="#">
                        <img src="/static/images/TJ2.jpg"></img>
                        <span>[特惠]</span>洋河年末大促，低至两件五折
                    </a></li>
                    <li class="title-first"><a target="_blank" href="#">
                        <span>[公告]</span>商城与广州市签署战略合作协议
                        <img src="/static/images/TJ.jpg"></img>
                        <p>XXXXXXXXXXXXXXXXXX</p>
                    </a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>女生节商城爆品1分秒	</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>

                </ul>

            </div>
        </div>
        <div class="clear"></div>

    </div>



    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function() {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }
            $(function() {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--热门活动 -->

        <div class="am-container">

            <div class="sale-mt">
                <em class="sale-title">商品</em>
                <div class="s-time" id="countdown">
                    <span class="hh">01</span>
                    <span class="mm">20</span>
                    <span class="ss">59</span>
                </div>
            </div>


            <div class="am-g am-g-fixed sale">
                <c:forEach items="${goods}" var="goods">
                    <div class="am-u-sm-3 sale-item">
                        <div class="s-img">
                            <a href="# "><img src="/onload/${goods.gimg}" /></a>
                        </div>
                        <div class="s-info">
                            <a href="#"><p class="s-title">${goods.gname}</p></a>
                            <div class="s-price">￥<b>${goods.gprice}</b>
                                <a class="s-buy" href="#">购买</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <div class="clear "></div>



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
</div>
</div>
</div>


<script type="text/javascript " src="../basic/js/quick_links.js "></script>
</body>

</html>
