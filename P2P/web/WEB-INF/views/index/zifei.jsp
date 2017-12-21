<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>资费说明</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="<%=path%>/static/css/common.css" rel="stylesheet" />
    <link href="<%=path%>/static/css/about.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/common.js"></script>
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
                    <div class=""><a href="../user/register.jsp" class="c-orange" title="免费注册">免费注册</a></div>
                </li>
                <li>
                    <div class=""><a href="../user/login.jsp" class="js-login" title="登录">登录</a></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="header min-width">
        <div class="container">
            <div class="fn-left logo"> <a class="" href="../index.jsp"> <img src="images/logo.png"  title=""> </a> </div>
            <ul class="top-nav fn-clear">
                <li class="on"> <a href="../index.jsp">首页</a> </li>
                <li> <a href="list.jsp" class="">我要投资</a> </li>
                <li> <a href="help.jsp">安全保障</a> </li>
                <li class="top-nav-safe"> <a href="../user/userindex.jsp">我的账户</a> </li>
                <li> <a href="contract.jsp">关于我们</a> </li>
            </ul>
        </div>
    </div>
</header>
<!--关于我们-->
<div class="bg">
    <div class="contain" id="tabs" style="margin:0 auto;">
        <div class="text-nav">
            <ul class="clearfix">
                <li class="selected"> <a class="text-link" href="ad.jsp">网站公告</a> </li>
                <li> <a class="text-link" href="report.jsp">媒体报道</a> </li>
                <li> <a class="text-link" href="about.jsp">公司简介</a> </li>
                <li> <a class="text-link" href="managerTuandui.jsp">管理团队</a> </li>
                <li> <a class="text-link" href="hezuo.jsp">合作伙伴</a> </li>
                <li> <a class="text-link" href="tuandui.jsp">团队风采</a> </li>
                <li> <a class="text-link" href="fl1.jsp">法律政策</a> </li>
                <li> <a class="text-link" href="fl2.jsp">法律声明</a> </li>
                <li> <a class="text-link" href="zifei.jsp">资费说明</a> </li>
                <li> <a class="text-link" href="zhaopin.jsp">招贤纳士</a> </li>
                <li> <a class="text-link" href="contract.jsp">联系我们</a> </li>
            </ul>
        </div>
        <div class="text-box">
            <div class="text-content" id="text-content">
                <h1 class="title">资费说明</h1>
                <p class="mt10 cn_line">
                    <strong>一、投资者居间服务费：</strong> <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 投资者在收回借款时，网站将相应收取居间服务费，居间服务费为借款利息的10%，从每期还款中直接扣除。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 亿人宝郑重承诺：如投资者未能获得利息，亿人宝将启动“赔付宝”本息安全保障计划，按照《“赔付宝”资金使用规则》对投资者的本金及利息进行垫付，除居间服务费外，网站不向投资人收取其他费用。
                </p>
                <p>
                    <br>
                </p>
                <p class="mt10 cn_line">
                    <strong>二、充值费和取现费：</strong><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 充值费用：<span style="color:#e53333;">所有用户充值全部免费</span>。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 提现费用：亿人宝不向平台会员收取任何提现费用，仅代为收取第三方平台（环迅支付）应缴纳的提现费用。 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;普通会员提现时按照额度，每笔收取提现金额的千分之三（0.3%），上不封顶。 <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#e53333;">亿人宝VIP会员缴纳年费后，将免费提现</span>，由亿人宝支付应向第三方平台（环迅支付）缴纳的提现费用。
                </p>
                <p>
                    <br>
                </p>
                <p class="mt10 cn_line">
                    <strong>三、成为会员：</strong> <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 凡是在亿人宝平台注册的用户，自动成为亿人宝普通会员，<span style="color:#e53333;">普通会员免会员费。</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 普通会员可在缴纳会员费后升级为VIP会员，会员费每年为500元。 <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. VIP会员享受取现免费、优先办理业务、优先本金或本息垫付、月度电子对账单发送等服务。 <br>
                </p>
            </div>
        </div>
    </div>
</div>
<!--网站底部-->
<div id="footer" class="ft">
    <div class="ft-inner clearfix">
        <div class="ft-helper clearfix">
            <dl>
                <dt>关于我们</dt>
                <dd><a href="about.jsp">公司简介</a><a href="managerTuandui.jsp">管理团队</a><a href="网站公告.html">网站公告</a></dd>
            </dl>
            <dl>
                <dt>相关业务</dt>
                <dd><a href="list.jsp">我要投资</a><a href="../index.jsp">我要借款</a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="help.jsp">新手入门</a><a href="../user/userindex.jsp">我的账户</a><a href="list.html">债权转让</a></dd>
            </dl>
            <dl>
                <dt>联系我们</dt>
                <dd><a href="contract.jsp">联系我们</a></dd>
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
