//生成用户数据
$('#mytab').bootstrapTable({
    method: 'post',
    contentType: "application/x-www-form-urlencoded",//必须要有！！！！
    url: "/tz/pager_criteria",//要请求数据的文件路径
    toolbar: '#toolbar',//指定工具栏
    striped: true, //是否显示行间隔色
    dataField: "res",
    sortable: true, //是否启用排序 sortOrder: "ID asc",
    sortOrder: "ID asc",
    pagination: true,//是否分页
    queryParamsType: 'limit',//查询参数组织方式
    queryParams: queryParams,//请求服务器时所传的参数
    sidePagination: 'server',//指定服务器端分页
    pageNumber: 1, //初始化加载第一页，默认第一页
    pageSize: 10,//单页记录数
    pageList: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100],//分页步进值
    showRefresh: true,//刷新按钮
    showColumns: true,
    clickToSelect: true,//是否启用点击选中行
    toolbarAlign: 'right',//工具栏对齐方式
    buttonsAlign: 'right',//按钮对齐方式
    search: true,
    uniqueId: "tzid",                     //每一行的唯一标识，一般为主键列
    showExport: true,
    exportDataType: 'all',
    columns: [
        {
            radio: true,
            width: 25,
            align: 'center',
            valign: 'middle'
        },

        {
            title: '投资人',
            field: 'uname',
            align: 'center',
            sortable: true
        },

        {
            title: '借款人',
            field: 'rname',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '投资金额',
            field: 'money',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '投资产品',
            field: 'cpname',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '投资利率',
            field: 'nprofit',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '投资时间',
            field: 'time',
            align: 'center',
            sortable: true,
            formatter: function (value) {
                var date = new Date(value);
                var y = date.getFullYear();
                var m = date.getMonth() + 1;
                var d = date.getDate();
                var h = date.getHours();
                var mi = date.getMinutes();
                var ss = date.getSeconds();
                return y + '-' + m + '-' + d ;
            }
        }
    ],
    locale: 'zh-CN',//中文支持,
    responseHandler: function (res) {
        if (res) {
            return {
                "res": res.rows,
                "total": res.total
            };
        } else {
            return {
                "rows": [],
                "total": 0
            };
        }
    }
})

//请求服务数据时所传参数
function queryParams(params) {
    var title = "";
    $(".search input").each(function () {
        title = $(this).val();
    });
    return {
        //每页多少条数据
        pageSize: this.pageSize,
        //请求第几页
        pageIndex: this.pageNumber,
        searchVal: title
    }
}


function findDetails() {
    var juid = $.map($("#mytab").bootstrapTable('getSelections'), function (row) {
        return row.juid;
    });
    if (juid == "") {
        layer.msg('查看收款详情失败，请勾选数据!', {
            icon: 2,
            time: 2000
        });
        return;
    }else {
        window.location.href ="/sk/skDetail/"+juid+"?pageNo=1";
    }
}

//查询按钮事件
$('#search_btn').click(function () {
    $('#mytab').bootstrapTable('refresh', {url: '/tz/pager_criteria'});
});

function refush() {
    $('#mytab').bootstrapTable('refresh', {url: '/tz/pager_criteria'});
}


