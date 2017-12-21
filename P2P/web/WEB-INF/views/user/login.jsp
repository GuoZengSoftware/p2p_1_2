<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="<%=path%>/static/css/common.css" rel="stylesheet" />
    <link href="<%=path%>/static/css/register.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/common.js"></script>
    <script src="<%=path%>/static/js/login.js" type="text/javascript"></script>
</head>
<body>
<header>
    <div class="header-top min-width">
        <div class="container fn-clear"> <strong class="fn-left">咨询热线：400-668-6698<span class="s-time">服务时间：9:00 - 18:00</span></strong>
            <ul class="header_contact">
                <li class="c_1"> <a class="ico_head_weixin" id="wx"></a>
                    <div class="ceng" id="weixin_xlgz" style="display: none;">
                        <div class="cnr"> <img src="<%=path%>/static/images/code.png"> </div>
                        <b class="ar_up ar_top"></b> <b class="ar_up_in ar_top_in"></b> </div>
                </li>
                <li class="c_2"><a href="#" target="_blank" title="官方QQ" alt="官方QQ"><b class="ico_head_QQ"></b></a></li>
                <li class="c_4"><a href="#" target="_blank" title="新浪微博" alt="新浪微博"><b class="ico_head_sina"></b></a></li>
            </ul>
            <ul class="fn-right header-top-ul">
                <li> <a href="../index.jsp" class="app">返回首页</a> </li>
                <li>
                    <div class=""><a href="register.jsp" class="c-orange" title="免费注册">免费注册</a></div>
                </li>
                <li>
                    <div class=""><a href="login.jsp" class="js-login" title="登录">登录</a></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="header min-width">
        <div class="container">
            <div class="fn-left logo"> <a class="" href="../index.jsp"> <img src="images/logo.png"  title=""> </a> </div>
            <ul class="top-nav fn-clear">
                <li class="on"> <a href="../index.jsp">首页</a> </li>
                <li> <a href="../index/list.jsp" class="">我要投资</a> </li>
                <li> <a href="../index/help.jsp">安全保障</a> </li>
                <li class="top-nav-safe"> <a href="userindex.jsp">我的账户</a> </li>
                <li> <a href="../index/about.jsp">关于我们</a> </li>
            </ul>
        </div>
    </div>
</header>
<!--注册-->
<div class="wrap">
    <form id="LonginForm" name="LonginForm" action="" method="post">
        <div class="tdbModule loginPage">
            <div class="registerTitle">用户登录</div>
            <div class="registerCont">
                <ul>
                    <li class="error">
                        <span id="prrintInfo" data-info=""><span>请输入正确用户名</span></span>
                    </li>
                    <li>
                        <span class="dis">用户名：</span><input class="input" type="text" onblur="userNameJy()" name="j_username" id="userName" maxlength="24" tabindex="1" autocomplete="off">
                        <a id="sssdfasdfas" href="#" class="blue">注册用户</a>
                    </li>

                    <li>
                        <span class="dis">密码：</span><input class="input" type="password" name="password" id="password" maxlength="24" tabindex="1" autocomplete="off">
                        <a href="#" id="pawHide" class="blue">忘记密码</a>
                    </li>
                    <li>
                        <span class="dis">验证码：</span><input type="text" onkeyup="verify(this)" id="jpgVerify" style="width:166px;" class="input" name="yzm" data-msg="验证码" maxlength="4" tabindex="1" autocomplete="off">
                        <img src="<%=path%>/static/images/code.jpg" id="yanzheng" alt="点击更换验证码" title="点击更换验证码" style="cursor:pointer;" class="valign">
                        <a href="javascript:void(0);" onclick="changge();" class="blue">看不清？换一张</a>
                    </li>
                    <li class="btn">
                        <input type="button" class="radius1" value="立即登录" id="submitBtn" onclick="sublogin()" disabled="disabled">
                    </li>
                </ul>
            </div>
        </div>
    </form>
</div>
<!--网站底部-->
<div id="footer" class="ft">
    <div class="ft-inner clearfix">
        <div class="ft-helper clearfix">
            <dl>
                <dt>关于我们</dt>
                <dd><a href="../index/about.jsp">公司简介</a><a href="../index/managerTuandui.jsp">管理团队</a><a href="网站公告.html">网站公告</a></dd>
            </dl>
            <dl>
                <dt>相关业务</dt>
                <dd><a href="../index/list.jsp">我要投资</a><a href="../index.jsp">我要借款</a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="../index/help.jsp">新手入门</a><a href="userindex.jsp">我的账户</a><a href="list.html">债权转让</a></dd>
            </dl>
            <dl>
                <dt>联系我们</dt>
                <dd><a href="../index/contract.jsp">联系我们</a></dd>
            </dl>
        </div>
        <div class="ft-service">
            <dl>
                <dd>
                    <p><strong>400-660-1268</strong><br>
                        工作日 9:00-22:00<br>
                        官方交流群:<em>12345678</em><br>
                        工作日 9:00-22:00 / 周六 9:00-18:00<br>
                    </p>
                    <div class="ft-serv-handle clearfix"><a class="icon-hdSprite icon-ft-sina a-move a-moveHover" title="亿人宝新浪微博" target="_blank" href="#"></a><a class="icon-hdSprite icon-ft-qqweibo a-move a-moveHover" title="亿人宝腾讯微博" target="_blank" href="#"></a><a class="icon-ft-qun a-move a-moveHover" title="亿人宝QQ群" target="_blank" href="#"></a><a class="icon-hdSprite icon-ft-email a-move a-moveHover mrn" title="阳光易贷email" target="_blank" href="mailto:xz@yirenbao.com"></a></div>
                </dd>
            </dl>
        </div>
        <div class="ft-wap clearfix">
            <dl>
                <dt>官方二维码</dt>
                <dd><span class="icon-ft-erweima"><img src="<%=path%>/static/images/code.png" style="display: inline;"></span></dd>
            </dl>
        </div>
    </div>
    <div class="ft-record">
        <div class="ft-approve clearfix"><a class="icon-approve approve-0 fadeIn-2s" target="_blank" href="#"></a><a class="icon-approve approve-1 fadeIn-2s" target="_blank" href="#"></a><a class="icon-approve approve-2 fadeIn-2s" target="_blank" href="#"></a><a class="icon-approve approve-3 fadeIn-2s" target="_blank" href="#"></a></div>
        <div class="ft-identity">©2017 亿人宝 All rights reserved&nbsp;&nbsp;&nbsp;<span class="color-e6">|</span>&nbsp;&nbsp;&nbsp;安徽省亿人宝投资管理有限公司&nbsp;&nbsp;&nbsp;<span class="color-e6">|</span>&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://www.miitbeian.gov.cn/">皖ICP备12345678号-1</a></div>
    </div>
</div>
</body>
</html>
