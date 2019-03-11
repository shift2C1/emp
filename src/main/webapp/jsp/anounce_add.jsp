<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/3/1
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
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
        $(function () {
            //获得发送时间
            $("#getdate").ready(function () {
                $.ajax({
                    url:"../system/getcurrentdate",
                    type:"GET",
                    dataType:"JSON",
                    success:function (data) {

                        $("#getdate").val(data);

                    }
                });
            });
            //动态加载部门
            $("#did").ready(function () {
                $.ajax({
                    url:"../emp/getemps",
                    type:"GET",
                    dataType:"JSON",
                    success:function (data) {
                        //清空下拉列表
                        $("#did").empty();
                        $("#did").append("<option value=''>请选择部门</option>");
                        for(var i=0;i<data.length;i++){
                            //拼接
                            $("#did").append('<option value='+data[i].id+'>'+data[i].name+'</option>');
                        }

                    }
                });
            });
        })
    </script>
</head>
<body>
发布公告

<form class="layui-form" action="../admin/anounce_add" lay-filter="example" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">发送方</label>
        <div class="layui-input-inline">
            <input type="text" name="aname" lay-verify="title" value="${sessionScope.obj.username}"  class="layui-input" readonly>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">发布时间</label>
        <div class="layui-input-inline">
            <input type="text" name="date"  id="getdate" class="layui-input" readonly>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">接收方：</label>
        <div class="layui-input-inline">
            <%--<form:select path="" items=""></form:select>--%>
            <select name="did"  id="did" lay-ignore="">
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">内容</label>
        <div class="layui-input-inline">
            <input type="text" name="content"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>--%>
            <input type="submit" class="layui-btn" value="现在发送">
        </div>
    </div>
</form>
</body>
</html>
