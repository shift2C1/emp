<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/25
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script>
        layui.use('form', function(){
            var form = layui.form;
            form.render();
        });
    </script>
</head>
<body>
<form class="layui-form" action="../dep/add" lay-filter="example" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">部门名字</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="title" autocomplete="off"  class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">创建时间</label>
        <div class="layui-input-inline">
            <input type="text" name="createtime"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="note"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>--%>
            <input type="submit" class="layui-btn" value="现在添加">
        </div>
    </div>
</form>
</body>
</html>
