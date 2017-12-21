<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>合作伙伴</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="<%=path%>/static/css/common.css" rel="stylesheet" />
    <link href="<%=path%>/static/css/about.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/common.js"></script>
</head>
<body>
<!-- 网站头部-->
<%@include file="../common/header.jsp"%>
<!--关于我们-->
<div class="bg">
    <div class="contain" id="tabs" style="margin:0 auto;">
        <div class="text-nav">
            <ul class="clearfix">
                <li> <a class="text-link" href="<%=path%>/page/ad">网站公告</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/report">媒体报道</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/about">公司简介</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/managerTuandui">管理团队</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/hezuo">合作伙伴</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/tuandui">团队风采</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/fl1">法律政策</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/fl2">法律声明</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/zifei">资费说明</a> </li>
                <li> <a class="text-link" href="<%=path%>/page/zhaopin">招贤纳士</a> </li>
                <li class="selected"> <a class="text-link" href="<%=path%>/page/contract">联系我们</a> </li>
            </ul>
        </div>
        <div class="text-box">
            <div class="text-content" id="text-content">
                <h1 class="title">合作伙伴</h1>
                <ul class="clearfix partner">
                    <li class="mt10 partner-item clearfix">
                        <a href="" class="logo" style="margin-top:50px">
                            <img src="<%=path%>/static/images/ips.jpg" style="vertical-align:middle">
                        </a>
                        <div class="text">
                            <h5>
                                安徽大成律师事务所
                            </h5>
                            <p class="cn_line" style="text-indent:0;">
                                安徽大成律师事务所成立于2014年5月15日，主要从事的业务领域包括诉讼及争议解决、建筑房地产、公用事业、境内上市、境外上市、重组并购、税务、金融和银行、国际贸易等。
                                安徽大成律师事务所有合伙人200余名，已有众多世界500强企业、跨国公司、外商投资企业、国际和本土金融机构及投资基金成为亿人宝的长期客户和良好合作伙伴。
                            </p>
                        </div>
                    </li>
                    <li class="mt10 partner-item clearfix">
                        <a href="" class="logo" style="margin-top:100px">
                            <img src="<%=path%>/static/images/ips.jpg" style="vertical-align:middle">
                        </a>
                        <div class="text">
                            <h5>
                                迅付信息科技有限公司
                            </h5>
                            <p class="cn_line" style="text-indent:0;">
                                迅付信息科技有限公司（简称：环迅支付），是中国最早成立的第三方支付企业。公司在2011年获颁中国人民银行首批《支付业务许可证》。公司目前可以支持国际主流信用卡及所有国内主流银行的在线支付，为全球超过60万家商户及2000万用户提供金融级的支付体验。
                                环迅支付总部位于上海，在长春、北京、南京、杭州、成都、重庆、福州、广州及深圳均拥有分支机构。公司现为中国首批获得VISA QSP认证（第三方支付公司资质认证方案，Qualified Service Provider）的第三方支付企业。
                                <span class="red">环迅支付现为我司第三方资金托管合作伙伴</span>。
                            </p>
                        </div>
                    </li>


                </ul>
            </div>
        </div>
    </div>
</div>
<!-- 网站底部-->
<%@include file="../common/footer.jsp" %>
</body>
</html>
