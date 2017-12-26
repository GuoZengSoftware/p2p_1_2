//生成用户数据
$('#mytab').bootstrapTable({
    method: 'post',
    contentType: "application/x-www-form-urlencoded",//必须要有！！！！
    url: "/recommend/pager_criteria",//要请求数据的文件路径
    toolbar: '#toolbar',//指定工具栏
    striped: true, //是否显示行间隔色
    dataField: "res",
    sortable: true, //是否启用排序 sortOrder: "ID asc",
    sortOrder: "ID asc",
    pagination: true,//是否分页
    //queryParamsType: 'limit',//查询参数组织方式
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
    toolbar: '#toolbar',
    search: true,
    uniqueId: "id",                     //每一行的唯一标识，一般为主键列
    showExport: true,
    exportDataType: 'all',
    columns: [
        {
            title: '全选',
            field: 'select',
            //复选框
            checkbox: true,
            width: 25,
            align: 'center',
            valign: 'middle'
        },

        {
            title: '推荐人编号',
            field: 'tid',
            align: 'center',
            sortable: true
        },

        {
            title: '推荐人姓名',
            field: 'tname',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '被推荐人编号',
            field: 'uid',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '被推荐人姓名',
            field: 'rname',
            align: 'center',
            sortable: true
        }
        ,
        {
            title: '创建时间',
            field: 'date',
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
        ,
        {
            title: '操作',
            align: 'center',
            field: '',
            formatter: function (value, row, index) {
                var g='';
                if(row.isCheck==0){
                    g = '<a title="审核" id="checker" id="cashAccounts"  data-toggle="modal" data-id="\'' + row.id + '\'" data-target="#shenheModal" onclick="return shenhe(\'' + row.id + '\')"><i class="glyphicon glyphicon-import" alt="审核" style="color:green"></i></a>';
                }
                var e = '<a title="编辑" href="javascript:void(0);" id="leave"  data-toggle="modal" data-id="\'' + row.id + '\'" data-target="#myModal" onclick="return edit(\'' + row.id + '\')"><i class="glyphicon glyphicon-pencil" alt="修改" style="color:green"></i></a> ';
                var d = '<a title="删除" href="javascript:void(0);" onclick="del(' + row.id + ',\'' + '/recommend/remove\'' + ')"><i class="glyphicon glyphicon-trash" alt="删除" style="color:red"></i></a> ';
                var f = '';
                if (row.isActive == 0) {
                    f = '<a title="激活" href="javascript:void(0);" onclick="updatestatus(' + row.id + ',' + 0 + ')"><i class="glyphicon glyphicon-ok-sign" style="color:green"></i></a> ';
                } else if (row.isActive == 1) {
                    f = '<a title="冻结" href="javascript:void(0);" onclick="updatestatus(' + row.id + ',' + 1 + ')"><i class="glyphicon glyphicon-remove-sign"  style="color:red"></i></a> ';
                }
                return g+e + d + f;
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
function doSearch () {
    var tname=$('#tname').val();
    var rname=$('#rname').val();
    var date=$('#rdate').val();
    var options=$('#mytab').bootstrapTable('refresh', {url: '/recommend/pager_criteria',query:{tname:tname,rname:rname}});
}
//刷新表格
function refush() {
    $('#mytab').bootstrapTable('refresh');
}
function del(id,url) {
    layer.confirm('确认要删除吗？', function (index) {
        $.ajax({
            type: 'POST',
            url: url+'?id=' + id,
            dataType: 'json',
            success: function (data) {
                if (data.message == '删除成功!') {
                    layer.msg(data.message, {icon: 2, time: 1000});
                } else {
                    layer.msg(data.message, {icon: 1, time: 1000});
                }
                refush();
            },
            error: function (data) {
                console.log(data.msg);
            },
        });
    });
}
function edit(name) {
    $.post("/leave/findLeave/" + name,
        function (data) {
            $("#updateForm").autofill(data);

        },
        "json"
    );
}

function deleteMany(url) {
    var row = $.map($("#mytab").bootstrapTable('getSelections'), function (row) {
        return row.id;
    });
    if (row == "") {
        layer.msg('删除失败，请勾选数据!', {
            icon: 2,
            time: 2000
        });
        return;
    }
    $("#deleteId").val(row);
    layer.confirm('确认要执行批量删除请假员工数据吗？', function (index) {
        $.post(
            url,
            {
                "id": $("#deleteId").val()
            },
            function (data) {
                if (data.message == "删除成功!") {
                    layer.msg(data.message, {icon: 1, time: 1000});
                    refush();
                } else {
                    layer.msg(data.message, {icon: 2, time: 1000});
                }
                refush();
            }, "json"
        );
    });
}
