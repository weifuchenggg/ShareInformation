<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teditPersonInfo.jsp' starting page</title>
    
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
    <td><label>性别:</label></td>
    <td><label>电话:</label></td>
  </tr>
      <tr>
    <td><label>职务:</label></td>
    <td><label>邮箱:</label></td>
  </tr>
     <tr>
    <td><label>政治面貌:</label></td>
  </tr>
          <tr>
    <td><input type="button" value="确定" class="ok"></td>
    <td><input type="button" value="取消" checked="cancel"></td>
  </tr>
</table>
</form>
  <div>
  <form action="" method="post" id="">
   <table>
    <tr>
    <td><label>邮箱:</label></td>
    <td><label>电话:</label></td>
  </tr>
          <tr>
    <td><input type="button" value="确定" class="ok"></td>
    <td><input type="button" value="取消" checked="cancel"></td>
  </tr>
</table>
</form>
</div>
  </body>
</html>
