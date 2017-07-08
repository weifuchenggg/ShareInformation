<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body style="width: 100%;height: 1000px">
<div style="background: yellow" align="center"><h3>批量添加学生信息</h3></div>
<div style="background: mistyrose;width: 100%;height: 100%;"align="center">
    <table>

        <tr>
            <td>
                <form name="regform" method="post" action="#">
                    <label for="name">人数：</label><input type="text" name="username" id="name" maxlength="10">
                </form></td>
            <td>
                <form name="classform" method="post" action="#">
                    班级：<select name="class" id="class1">
                    <option>软件一班</option>
                    <option>软件二班</option>
                    <option>数学一班</option>
                    <option>数学二班</option>
                </select>
                </form>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>
                <form name="wordform" method="post" action="#">
                    <label for="pass">密码：</label><input type="text" disabled="disabled" value="123456" name="username" id="pass" size="6" maxlength="6">
                </form>
            </td>
            <td>
                <form name="zhichengform" method="post" action="#">
                    <label for="zhicheng">职称：</label><input type="text" name="username" id="zhicheng" value="普通学生" disabled="disabled">
                </form>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>
                <form name="classform" method="post" action="#">
                    学院：<select name="college" id="college1">
                    <option>外国语学院</option>
                    <option>理学院</option>
                    <option>数计学院</option>
                    <option>体育学院</option>
                </select>
                </form>
            <td>
            <form name="mianmaoform" method="post" action="#">
                <label for="mianmao">政治面貌：</label><input type="text" name="username" id="mianmao" value="群众" disabled="disabled">
            </form>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td>
                <form name="majorform" method="post" action="#">
                    专业：<select name="major" id="major1">
                    <option>软件工程</option>
                    <option>物联网工程</option>
                    <option>计算机科学与技术</option>
                    <option>数学专业</option>
                </select>
                </form>
            </td>
            <td>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td></td>
            <td>
                <input type="button" name="button" value="下一步"/>&nbsp;&nbsp;&nbsp;
                <input type="button" name="button" value="取消"/></td>
            </td>
        </tr>
    </table>
</div>
</body>
</html>