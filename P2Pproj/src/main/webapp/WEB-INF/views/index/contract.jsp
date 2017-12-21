<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>联系我们</title>
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
                <li> <a class="text-link" href="ad.jsp">网站公告</a> </li>
                <li> <a class="text-link" href="report.jsp">媒体报道</a> </li>
                <li> <a class="text-link" href="about.jsp">公司简介</a> </li>
                <li> <a class="text-link" href="managerTuandui.jsp">管理团队</a> </li>
                <li> <a class="text-link" href="hezuo.jsp">合作伙伴</a> </li>
                <li> <a class="text-link" href="tuandui.jsp">团队风采</a> </li>
                <li> <a class="text-link" href="fl1.jsp">法律政策</a> </li>
                <li> <a class="text-link" href="fl2.jsp">法律声明</a> </li>
                <li> <a class="text-link" href="zifei.jsp">资费说明</a> </li>
                <li> <a class="text-link" href="zhaopin.jsp">招贤纳士</a> </li>
                <li class="selected"> <a class="text-link" href="contract.jsp">联系我们</a> </li>
            </ul>
        </div>
        <div class="text-box">
            <div class="text-content" id="text-content">
                <h1 class="title">联系我们</h1>
                <p class="mt20 cn_line"> 如果您有任何意见或建议，欢迎通过邮件或电话联系我们。同时，欢迎您到我们公司参观或走访，来访前请先与我们的客服人员联系，我们将安排工作人员接见您的到来，感谢您对乐投贷的信任和支持！ </p>
                <div class="mt20 cn_line fl" style="width:50%;height:150px;"> <span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">工作时间</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线: 400-848-6688<br>
                    <span style="padding-left:20px;font-size:12px;color:#888;">（上午 9:00--12：00 下午 14：00--17：30）</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;意见、建议反馈邮箱：service@yirenbao.com </div>
                <div class="mt20 cn_line fl" style="width:50%;height:150px;"> <span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">商务合作部</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;负责人：余先生<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：400-848-6688<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱：yuzhirong@yirenbao.com </div>
                <div class="mt20 cn_line fl" style="width:50%;height:150px;"> <span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">客户服务部</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;负责人：赵小姐 <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：400-848-6688 <br>
                </div>
                <div class="mt20 cn_line fl" style="width:50%;height:150px;"> <span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">外联事务部</span><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;负责人：林小姐 <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：400-848-6688<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱：linyingying@yirenbao.com </div>
                <p></p>
            </div>
        </div>
    </div>
</div>
<!-- 网站底部-->
<%@include file="../common/footer.jsp" %>
</body>
</html>
