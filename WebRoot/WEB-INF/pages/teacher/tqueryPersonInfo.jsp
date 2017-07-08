<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tqueryPersonInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div>
  <form action="" method="post" id="">
   <table>
  <tr>
    <th>个人信息</th>
  </tr>
  <tr>
    <td><label>用户名:</label></td>
    <td><label>姓名:</label></td>
  </tr>
    <tr>
    <td><label>性别:</label></td>
    <td><label>电话:</label></td>
  </tr>
    <tr>
    <td><label>学院:</label></td>
    <td><label>教研室:</label></td>
  </tr>
      <tr>
    <td><label>职称:</label></td>
    <td><label>邮箱:</label></td>
  </tr>
          <tr>
    <td><input type="button" value="修改" class="edit"></td>
    <td><input type="button" value="返回" checked="back"></td>
  </tr>
</table>
</form>
</div>
  </body>
</html>
