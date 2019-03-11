<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/22
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加管理员</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script>
        layui.use('form', function(){
            var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

            //……

            //但是，如果你的HTML是动态生成的，自动渲染就会失效
            //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
            form.render();
        });
    </script>
</head>
<body>
<form class="layui-form" action="../admin/add" lay-filter="example" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-inline">
            <input type="text" name="username" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">再次输入密码</label>
        <div class="layui-input-inline">
            <input type="password" name="repassword" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <label class="layui-form-label">管理员等级</label>
    <div class="layui-input-inline">
        <select name="level" lay-filter="aihao">
            <option value="0" selected>请选择</option>
            <option value="1" >1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>--%>
            <input type="submit" class="layui-btn" value="现在注册">
        </div>
    </div>
</form>



</body>
</html>
