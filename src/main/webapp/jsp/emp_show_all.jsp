<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/26
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/emp_show_all.js"></script>
    <script type="text/javascript" src="../js/emp_personal.js">
    </script>
    <script>

    </script>
    <script>
        //二级菜单联动
        layui.use('element', function(){
            var element = layui.element;

        });
    </script>
</head>
<body>

<i class="layui-icon layui-icon-table" style="font-size: 23px; color: #eb7350;">所有的员工信息:</i>
<div >
    <i class="layui-icon layui-icon-edit" style="font-size: 20px; color: #eb7350;">按部门查看</i>
</div>
<select name="selectByDepartment" id="selectByDepartment">
    <%--<option value="id">部门名字</option>--%>
</select>

<table class="layui-hide" id="test" lay-filter="test"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看详情</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改信息</a>
    <%--<button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal" lay-event="edit">修改密码</button>--%>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>

</script>


</body>
</html>
