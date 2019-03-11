<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/25
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script>
        layui.use('form', function(){
            var form = layui.form;
            form.render();
        });
    </script>
    <script>
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#test'
                ,url:'../dep/getdeps'
                ,cols: [[
                    {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                    ,{field:'name', title:'部门名字', width:120}
                    ,{field:'createtime', title:'创建时间', width:120}
                    ,{field:'note', title:'备注', width:120}
                    ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:80}
                ]]
                ,page: true
            });

            table.on('tool(test)', function(obj){
                var data = obj.data;
                if(obj.event === 'del'){
                    layer.confirm('真的删除行么', function(index){
                        // alert(data.id);
                        window.location.href="../dep/deletebyid?id="+data.id;
                        layer.close(index);
                    });
                }
            });


        });
    </script>
    <script>
        //二级菜单联动
        layui.use('element', function(){
            var element = layui.element;

        });
    </script>

</head>
<body>
<p>部门信息</p>
<table class="layui-hide" id="test" lay-filter="test"></table>
<script type="text/html" id="barDemo">
    <%--<a class="layui-btn layui-btn-xs" lay-event="edit">修改密码</a>--%>
    <%--<button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal" lay-event="edit">修改密码</button>--%>

    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</body>
</html>
