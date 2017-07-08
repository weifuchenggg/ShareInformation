<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加教师信息</title>
    <!-- 导入jquery核心类库 -->
    <script type="text/javascript"
            src="./js/jquery-1.8.0.min.js"></script>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body {
            text-align: center;
           
       }
        #center{
           margin-left: 160px;
        }
        td{
            padding-right: 60px;
            padding-bottom: 40px;
            text-align: left;
        }
    </style>
    <script type="text/javascript">
        $(function(){
            $('#add').click(function(){
                $('#form').submit();
            });
            
            //为form设置提交属性
            $('#form').form({
	        	onSubmit: function(){
					// return false to prevent submit;
	        	},
	        	success:function(data){
	        		alert("****");
					top.$.messager.show({
						title:"提示",
						msg:"保存成功",
						timeout:3000
					})
					/* location.href="page_teacher_addTeacher.action"; */
	        	}
			});
        });
    </script>
</head>
<body style="background-image: url('./images/tianjia.jpg');background-repeat: no-repeat;">
<div align="center" style="color:blue;padding-top: 10px"><p style="font-size: 25px">添加老师信息</p></div>
<div id="center">
<form id="form" method="post" action="teacher_add">
<table>
    <tr>
        <td>姓名：<input type="text" name="name"  maxlength="10">
        </td>
        <td>教师号：<input type="text" name="id"  maxlength="10">
        </td>
    </tr>
    <tr>
        <td>学院：<select name="department" id="college1">
            <option>外国语学院</option>
            <option>理学院</option>
            <option>数计学院</option>
            <option>体育学院</option>
        </select>
        </td>
        <td>教研室：<select name="_office" id="class1" >
            <option>软件教研室</option>
            <option>软件二班</option>
            <option>数学一班</option>
            <option>数学二班</option>
        </select>
        </td>
    </tr>
    <tr>
        <td>职称：<select name="title" id="class1" >
            <option>教授</option>
            <option>副教授</option>
            <option>讲师</option>
            <option>助教</option>
        </select>
        </td>
        <td>
            政治面貌：<select name="politicalStatus" id="class1" >
            <option>团员</option>
            <option>党员</option>
            <option>群众</option>
        </select>
        </td>
    </tr>
    <tr>
        <td>
            <label for="pass">密码：</label><input type="text" readonly="readonly" value="123456" name="password" id="pass" size="6" maxlength="6">
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <input type="button" id="add" name="button" value="添加"/>&nbsp;&nbsp;&nbsp;
            <input type="button" name="button" value="取消"/></td>
        </td>
    </tr>
</table>
</form>
</div>
</body>
</html>