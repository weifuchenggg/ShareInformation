<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- 导入jQuery核心类库 -->
    <script type="text/javascript"
            src="./js/jquery-1.8.0.min.js"></script>
    <!-- 导入easyui核心类库 -->
    <script type="text/javascript"
            src="./js/easyui/jquery.easyui.min.js"></script>
    <!-- 国际化 -->
    <script
            src="./js/easyui/locale/easyui-lang-zh_CN.js"
            type="text/javascript"></script>
    <!-- easyui核心css -->
    <link id="easyuiTheme" rel="stylesheet" type="text/css"
          href="./js/easyui/themes/default/easyui.css">
    <!-- 图标css -->
    <link rel="stylesheet" type="text/css"
          href="./js/easyui/themes/icon.css">

	<link  rel="stylesheet" type="text/css"
		   href="css/style2.css">
<script type="text/javascript">
	// 工具栏
	var toolbar = [ {
		id : 'button-view',	
		text : '查看',
		iconCls : 'icon-search',
		handler : doView
	}, {
		id : 'button-add',
		text : '编辑',
		/*iconCls : 'icon-add',*/
		iconCls : 'icon-edit',
		handler : doAdd
	}, {
		id : 'button-delete',
		text : '删除',
		iconCls : 'icon-cancel',
		handler : doDelete
	}];
	//定义冻结列
	var frozenColumns = [ [ {
		field : 'select',
		title : '学号',
		checkbox : true,
		rowspan : 2
	},{
		field : 'id',
		title : '学号',
		width : 80,
		/*checkbox : true,*/
		rowspan : 1,
		align : 'center'
	}, {
		field : 'name',
		title : '姓名',
		width : 80,
		rowspan : 2,
		align : 'center'
	} ] ];


	// 定义标题栏
	var columns = [ [ {
		field : 'sex',
		title : '性别',
		width : 60,
		rowspan : 2,
		align : 'center'
	}, {
		field : 'phone',
		title : '电话',
		width : 120,
		rowspan : 2,
		align : 'center'
	},{
		field : 'email',
		title : '邮箱',
		width : 120,
		rowspan : 2,
		align : 'center'
	} ,{
		field : 'department',
		title : '二级学院',
		width : 80,
		rowspan : 2,
		align : 'center'
	}, {
		field : 'specialty',
		title : '专业',
		width : 80,
		rowspan : 2,
		align : 'center'
	},{
		field : 'claname',
		title : '班级',
		width : 80,
		rowspan : 2,
		align : 'center'
	},{
		field : 'job',
		title : '职务',
		width : 80,
		rowspan : 2,
		align : 'center'
	} ,{
		field : 'politicalStatus',
		title : '政治面貌',
		width : 80,
		rowspan : 2,
		align : 'center'
	},{
		field : 'password',
		title : '用户密码',
		width : 80,
		rowspan : 2,
		align : 'center'
	}] ];
	$(function(){
		// 初始化 datagrid
		// 创建grid
		$('#grid').datagrid( {
			iconCls : 'icon-forward',
			fit : true,
			border : false,
			rownumbers : true,
			striped : true,
			pageList: [30,50,100],
			pagination : true,
			toolbar : toolbar,
			/* url : "users.json", */
			url : "${pageContext.request.contextPath}/student_list.action",
			idField : 'id', 
			frozenColumns : frozenColumns,
			columns : columns,
			onClickRow : onClickRow,
			onDblClickRow : doDblClickRow
		});
		
		$("body").css({visibility:"visible"});
		
		 $('#query').click(function(){
                $('#form').submit();
            });
		
	});

	// 双击
	function doDblClickRow(rowIndex, rowData) {
		var items = $('#grid').datagrid('selectRow',rowIndex);
		doView();
	}
	// 单击
	function onClickRow(rowIndex){

	}
	
	function doAdd() {
		alert("添加用户");
		location.href="${pageContext.request.contextPath}/page_admin_userinfo.action";
	}

	function doView() {
		alert("编辑用户");
		var item = $('#grid').datagrid('getSelected');
		console.info(item.id);
		
		location.href = "${pageContext.request.contextPath}/user_view.action?id="+item.id; 
	}

	function doDelete() {
		alert("删除用户");
		var ids = [];
		var items = $('#grid').datagrid('getSelections');
		for(var i=0; i<items.length; i++){
		    ids.push(items[i].id);	       
		}
			
		console.info(ids.join(","));
		
		// 先删除 后 reload
		$.post("${pageContext.request.contextPath}/user_delete.action", {"ids":ids.join(",")}, function(data){
			$('#grid').datagrid('reload');
			$('#grid').datagrid('uncheckAll'); // 取消所有元素选中效果
		});
		
	}
	
</script>		
</head>
<body class="easyui-layout" style="visibility:hidden;">
	
	<div data-options="region:'north',border:false" style="width: 100%;height: 40px">
		<form id="form" method="post" action="student_list.action">
		<ul style="width: 100%;list-style: none;margin-top: 10px;" class="ul2">
			<li><select name="department"><option>所有学院</option><option>外国语学院</option><option>理学院</option><option>数计学院</option><option>体育学院</option></select></li>
			<li><select name="specialty"><option>所有专业</option><option>理学院</option><option>数计学院</option><option>体育学院</option></select></li>
			<li><select name="claname"><option>所有班级</option><option>外国语学院</option><option>理学院</option><option>数计学院</option><option>体育学院</option></select></li>
			<li><select name="job"><option>所有职务</option><option>理学院</option><option>数计学院</option><option>体育学院</option></select></li>
			<li><button ic="query">查询</button></li>
		</ul>
		</form>
	</div>
	
	<div data-options="region:'center'" style="padding:5px;background:#eee;">
    	<table id="grid"></table>
	</div>
</body>
</html>