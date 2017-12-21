<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>我要投资</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="<%=path%>/static/css/common.css" rel="stylesheet" />
    <link href="<%=path%>/static/css/index.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/static/css/detail.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/common.js"></script>
</head>
<body>
<!-- 网站头部-->
<%@include file="../common/header.jsp"%>
<!--列表-->
<div class="page-filter wrap">
    <div class="breadcrumbs"><a href="../index.jsp">首页</a>&gt;<span class="cur">散标投资列表</span></div>
    <div class="invest-filter" data-target="sideMenu">
        <div class="filter-inner clearfix">
            <div class="filter-item">
                <div class="hd">
                    <h3>筛选投资项目</h3>
                    <label>
                        <input id="filterMulti" name="multiple_choice" type="checkbox">
                        多选</label>
                </div>
                <div class="bd">
                    <dl>
                        <dt>项目类型</dt>
                        <dd>
                            <ul>
                                <li class="n1"><a href="javascript:url('post_type','');" id="post_type_" class="active">不限</a></li>
                                <li class="n2"><a href="javascript:url('post_type','car');" id="post_type_car">车易贷</a></li>
                                <li class="n3"><a href="javascript:url('post_type','house');" id="post_type_house">房易贷</a></li>
                                <li class="n4"><a href="javascript:url('post_type','bridge');" id="post_type_bridge">赎楼贷</a></li>
                                <li class="n5"><a href="javascript:url('post_type','worth');" id="post_type_worth">债权贷</a> </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt>年利率</dt>
                        <dd>
                            <ul>
                                <li class="n1"><a href="javascript:url('borrow_interestrate','');" id="borrow_interestrate_" class="active">不限</a></li>
                                <li class="n2"><a id="borrow_interestrate_1" href="javascript:url('borrow_interestrate','1');">12%以下</a> </li>
                                <li class="n3"><a id="borrow_interestrate_2" href="javascript:url('borrow_interestrate','2');">12%-14%</a> </li>
                                <li class="n4"><a id="borrow_interestrate_3" href="javascript:url('borrow_interestrate','3');">14%-16%</a> </li>
                                <li class="n5"><a id="borrow_interestrate_4" href="javascript:url('borrow_interestrate','4');">16%及以上</a> </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt>期限</dt>
                        <dd>
                            <ul>
                                <li class="n1"><a href="javascript:url('spread_month','');" id="spread_month_" class="active">不限</a> </li>
                                <li class="n2"><a id="spread_month_1" href="javascript:url('spread_month','1');">1月以下</a> </li>
                                <li class="n3"><a id="spread_month_2" href="javascript:url('spread_month','2');">1-3月</a> </li>
                                <li class="n4"><a id="spread_month_3" href="javascript:url('spread_month','3');">3-6月</a> </li>
                                <li class="n5"><a id="spread_month_4" href="javascript:url('spread_month','4');">6-12月</a> </li>
                                <li class="n6"><a id="spread_month_5" href="javascript:url('spread_month','5');">12月及以上</a> </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="repayment">
                        <dt>还款方式</dt>
                        <dd>
                            <ul>
                                <li class="n1"><a href="javascript:url('repay_style','');" id="repay_style_" class="active">不限</a></li>
                                <li class="n2"><a id="repay_style_end" href="javascript:url('repay_style','end');">到期还本付息</a> </li>
                                <li class="n2"><a id="repay_style_endmonth" href="javascript:url('repay_style','endmonth');">按月付息,到期还本</a> </li>
                                <li class="n2"><a id="repay_style_month" href="javascript:url('repay_style','month');">等额本息</a> </li>
                            </ul>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="common-problem">
                <h3>常见问题</h3>
                <ul>
                    <li><a href="#">什么是债权贷？</a></li>
                    <li><a href="#">关于"债权贷"产品的说明</a></li>
                    <li><a href="#">易贷网P2P理财收费标准</a></li>
                    <li><a href="#">债权贷和房易贷、车易贷有什么区别？</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="invest-list mrt30 clearfix">
        <div class="hd">
            <h3>投资列表</h3>
            <div class="count">
                <ul>
                    <li class="line">散标投资交易金额&nbsp;&nbsp;<span class="f20 bold">73.54亿元</span></li>
                    <li>累计赚取收益&nbsp;&nbsp;<span class="f20 bold">2.52亿元</span></li>
                </ul>
            </div>
        </div>
        <div class="bd">
            <div class="invest-table clearfix">
                <div class="title clearfix">
                    <ul>
                        <li class="col-330">借款标题</li>
                        <li class="col-180"><a href="javascript:url('order','account_up');" class="">借款金额</a> </li>
                        <li class="col-110"><a href="javascript:url('order','apr_up');" class="">年利率</a> </li>
                        <li class="col-150"><a href="javascript:url('order','period_up');" class="">借款期限</a> </li>
                        <li class="col-150">还款方式</li>
                        <li class="col-120"><a href="javascript:url('order','scale_up');" class="">借款进度</a></li>
                        <li class="col-120-t">操作</li>
                    </ul>
                </div>
                <!------------投资列表-------------->
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-che" title="车易贷"></i></a><a class="f18" href="info.jsp" title="赵女士长安福特福克斯汽车质押贷款4万元" target="_blank"> 赵女士长安福特福克斯汽车质... </a></li>
                        <li class="col-180"><span class="f20 c-333">40,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">12.00% </span></li>
                        <li class="col-150"> <span class="f20 c-333">1</span>个月 </li>
                        <li class="col-150">按月付息,到期还本</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb10">
                                        <div class="show-bar"> 100% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-che" title="车易贷"></i></a><a class="f18" href="info.jsp" title="唐先生宝马318汽车质押贷款5万元" target="_blank"> 唐先生宝马318汽车质押贷... </a></li>
                        <li class="col-180"><span class="f20 c-333">50,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">12.00% </span></li>
                        <li class="col-150"> <span class="f20 c-333">1</span>个月 </li>
                        <li class="col-150">按月付息,到期还本</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb1">
                                        <div class="show-bar"> 10% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-che" title="车易贷"></i></a><a class="f18" href="info.jsp" title="秦先生雪佛兰赛欧汽车质押贷款2万元" target="_blank"> 秦先生雪佛兰赛欧汽车质押贷... </a></li>
                        <li class="col-180"><span class="f20 c-333">20,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">12.00% </span></li>
                        <li class="col-150"> <span class="f20 c-333">1</span>个月 </li>
                        <li class="col-150">按月付息,到期还本</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb2">
                                        <div class="show-bar"> 20% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-che" title="车易贷"></i></a><a class="f18" href="info.jsp" title="曾先生北京现代悦动汽车质押贷款3万元" target="_blank"> 曾先生北京现代悦动汽车质押... </a></li>
                        <li class="col-180"><span class="f20 c-333">30,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">12.00% </span></li>
                        <li class="col-150"> <span class="f20 c-333">1</span>个月 </li>
                        <li class="col-150">按月付息,到期还本</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb3">
                                        <div class="show-bar"> 30% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-che" title="车易贷"></i></a><a class="f18" href="info.jsp" title="李先生海马普力马汽车质押贷款3.5万元" target="_blank"> 李先生海马普力马汽车质押贷... </a></li>
                        <li class="col-180"><span class="f20 c-333">35,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">12.00% </span></li>
                        <li class="col-150"> <span class="f20 c-333">1</span>个月 </li>
                        <li class="col-150">按月付息,到期还本</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb4">
                                        <div class="show-bar"> 40% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-fang" title="房易贷"></i></a><a class="f18" href="info.jsp" target="_blank"> 温先生单独所有房产抵押贷款... </a></li>
                        <li class="col-180"><span class="f20 c-333">200,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">15.60% </span></li>
                        <li class="col-150"> <span class="f20 c-333">36</span>个月 </li>
                        <li class="col-150">等额本息</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb5">
                                        <div class="show-bar"> 50% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-fang" title="房易贷"></i></a><a class="f18" href="info.jsp" title="孙先生单独所有房产、车位抵押贷款26万元" target="_blank"> 孙先生单独所有房产、车位抵... </a></li>
                        <li class="col-180"><span class="f20 c-333">260,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">15.60% </span></li>
                        <li class="col-150"> <span class="f20 c-333">36</span>个月 </li>
                        <li class="col-150">等额本息</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb7">
                                        <div class="show-bar"> 60% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-che" title="车易贷"></i></a><a class="f18" href="#" title="马先生宝马X3汽车抵押贷款27万元" target="_blank"> 马先生宝马X3汽车抵押贷款... </a></li>
                        <li class="col-180"><span class="f20 c-333">270,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">13.20% </span></li>
                        <li class="col-150"> <span class="f20 c-333">12</span>个月 </li>
                        <li class="col-150">等额本息</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb8">
                                        <div class="show-bar"> 70% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="info.jsp" target="_blank"><i class="icon icon-fang" title="房易贷"></i></a><a class="f18" href="#" title="吴女士单独所有房产抵押贷款13万元" target="_blank"> 吴女士单独所有房产抵押贷款... </a></li>
                        <li class="col-180"><span class="f20 c-333">130,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">12.10% </span></li>
                        <li class="col-150"> <span class="f20 c-333">2</span>个月 </li>
                        <li class="col-150">按月付息,到期还本</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb9">
                                        <div class="show-bar"> 80% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li class="col-330 col-t"><a href="#" target="_blank"><i class="icon icon-fang" title="房易贷"></i></a><a class="f18" href="info.jsp" title="李先生夫妻共有房产抵押贷款15万元" target="_blank"> 李先生夫妻共有房产抵押贷款... </a></li>
                        <li class="col-180"><span class="f20 c-333">150,000.00</span>元</li>
                        <li class="col-110 relative"><span class="f20 c-orange">18.00% </span></li>
                        <li class="col-150"> <span class="f20 c-333">60</span>个月 </li>
                        <li class="col-150">等额本息</li>
                        <li class="col-120">
                            <div class="circle">
                                <div class="left progress-bar">
                                    <div class="progress-bgPic progress-bfb9">
                                        <div class="show-bar"> 90% </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-120-2"> <a class="ui-btn btn-gray" href="info.jsp">还款中</a> </li>
                    </ul>
                </div>
                <!------------投资列表-------------->
            </div>
            <div class="pagination clearfix mrt30"> <span class="page"><a href="javascript:void(0);" onclick="">首页</a><a href="javascript:void(0);" onclick="">上一页</a>&nbsp;<a class="curr" href="javascript:;">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="javascript:void(0);" onclick="#">下一页</a><a href="javascript:void(0);" onclick="#">尾页</a>&nbsp;<em>共2297页&nbsp;</em></span>
                <dl class="page-select">
                    <dt><span>1</span><i class="icon icon-down"></i></dt>
                    <dd style="display: none;">
                        <ul name="nump" id="jsnump">
                            <li><a href="##" onclick="page_jump(&quot;this&quot;,1)">1</a></li>
                            <li><a href="##" onclick="page_jump(&quot;this&quot;,2)">2</a></li>
                            <li><a href="##" onclick="page_jump(&quot;this&quot;,3)">3</a></li>
                        </ul>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</div>
<!-- 网站底部-->
<%@include file="../common/footer.jsp" %>
</body>
</html>
