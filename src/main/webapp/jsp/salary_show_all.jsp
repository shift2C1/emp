<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/3/2
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>薪水</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script>
        layui.use('form', function(){
            var form = layui.form;
            form.render();
        });
    </script>
    <script type="text/javascript" src="../js/salary_show_all.js"></script>
    <script>
        //二级菜单联动
        layui.use('element', function(){
            var element = layui.element;

        });
    </script>
    <script>
        layui.use('laydate', function(){
            var laydate = layui.laydate;

            //年月选择器
            laydate.render({
                elem: '#start'
                ,type: 'month'
            });
            laydate.render({
                elem: '#end'
                ,type: 'month'
            });
        });
    </script>
</head>
<body>
    <table class="layui-hide" id="test" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除薪资</a>
    </script>
    <div id="salary_add" class="layui-icon layui-icon-add-circle" style="font-size: 20px; color: #1E9FFF;">添加员工薪资</div>
    <br>
    <div id="getbytime" class="layui-icon layui-icon-help" style="font-size: 20px; color: #1E9FFF;">按时间查询</div>
    开始时间<input type="text"  id="start" placeholder="yyyy-MM">
    <br>
    <br>
    结束时间<input type="text"  id="end" placeholder="yyyy-MM">
    <br>
    <button id="submit">立即查询</button>
    <div id="getbyempid" class="layui-icon layui-icon-help" style="font-size: 20px; color: #1E9FFF;">按编号查询</div>
    <input type="text" name="id" id="inputid"><br>
    <button id="submitbyid">立即查询</button>

</body>
</html>
