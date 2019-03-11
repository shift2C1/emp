<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/26
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>
    <script type="text/javascript" src="../js/emp_add.js"></script>
    <script>
        layui.use('form', function(){
            var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
            form.render();
        });
    </script>
</head>
<body>
添加员工
<%--<form action="../emp/add" method="post">--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td>姓名</td>--%>
            <%--<td><input type="text" name="name"   ></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>部门</td>--%>
            <%--<td>--%>
                <%--<select name="depid" id="depid">--%>
                    <%--<option value="0">选择部门</option>--%>

                <%--</select>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>性别</td>--%>
            <%--<td><input type="radio" name="sex" value="0"  checked="">男--%>
                <%--<input type="radio" name="sex" value="1" >女</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>备注</td>--%>
            <%--<td><textarea></textarea></td>--%>
        <%--</tr>--%>


    <%--</table>--%>
    <%--<input type="submit" value="立即提交">--%>

<%--</form>--%>
<form class="layui-form" action="../emp/add" lay-filter="example" >
    <div class="layui-form-item">
        <label class="layui-form-label">名字</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="title" autocomplete="off"  class="layui-input">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">部门</label>
        <div class="layui-input-inline">
            <%--<form:select path="" items=""></form:select>--%>
            <select name="depid"  id="depid" lay-ignore="">
                <%--拿数据库的所有部门--%>
                <%--<c:forEach items="${requestScope.deplist}" var="dep">--%>
                    <%--<option value="${dep.id}">${dep.name}</option>--%>
                <%--</c:forEach>--%>
                <%--<option value=""></option>--%>
                <%--<option value="0">写作</option>--%>
                <%--<option value="1">阅读</option>--%>
                <%--<option value="2">游戏</option>--%>
                <%--<option value="3">音乐</option>--%>
                <%--<option value="4">旅行</option>--%>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block" >
            <input type="radio" name="sex" value="0" title="男" checked="" >
            <input type="radio" name="sex" value="1" title="女" >
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea" name="note"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--<input type="submit" value="立即提交">--%>
            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
        </div>
    </div>
</form>
<%--<form action="../file/up" method="post" enctype="multipart/form-data">--%>
    <%--<input type="file" name="touxiang"><br>--%>
    <%--<input type="submit" value="上传头像">--%>
<%--</form>--%>
<%--<c:if test="${requestScope.imgpath!=null}">--%>
    <%--<div>--%>
        <%--头像预览：--%>
        <%--<div id="previewimg" style="width: 60px ;height: 80px;border: 1px;background-color:#5633ff;" >--%>
            <%--<img src="${requestScope.imgpath}" style="width: 60px;height: 80px">--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</c:if>--%>



</body>
</html>
