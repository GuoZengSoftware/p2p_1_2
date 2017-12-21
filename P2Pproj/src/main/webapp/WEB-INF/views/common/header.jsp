<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li> <a href="http://localhost:8080" class="app">返回首页</a> </li>
                <li>
                    <div class=""><a href="<%=path%>/page/register" class="c-orange" title="免费注册">免费注册</a></div>
                </li>
                <li>
                    <div class=""><a href="<%=path%>/page/login" class="js-login" title="登录">登录</a></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="header min-width">
        <div class="container">
            <div class="fn-left logo"> <a class="" href="http://localhost:8080"> <img src="<%=path%>/static/images/logo.png"  title=""> </a> </div>
            <ul class="top-nav fn-clear">
                <li class="on"> <a href="http://localhost:8080">首页</a> </li>
                <li> <a href="<%=path%>/page/list" class="">我要投资</a> </li>
                <li> <a href="<%=path%>/page/help">安全保障</a> </li>
                <li class="top-nav-safe"> <a href="<%=path%>/page/user">我的账户</a> </li>
                <li> <a href="<%=path%>/page/about">关于我们</a> </li>
            </ul>
        </div>
    </div>
</header>
