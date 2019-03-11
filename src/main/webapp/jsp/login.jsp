<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/18
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理员登录</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/login.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body>
<div id="main">
    <%--修改密码后重新登录提示用户--%>
    <c:if test="${sessionScope.reloginmsg!=null}">
        <p>${sessionScope.reloginmsg}</p>
    </c:if>

    <form class="layui-form" action="../account/switchLogin" lay-filter="example" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">输入框</label>
            <div class="layui-input-inline">
                <input type="text" name="username" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码框</label>
            <div class="layui-input-inline">
                <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">权限</label>
            <div class="layui-input-block">
                <input type="radio" name="level" value="1" title="超管" checked="" >
                <input type="radio" name="level" value="2" title="总经理" >
                <input type="radio" name="level" value="3" title="部门经理" >
                <input type="radio" name="level" value="4" title="员工" >
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <%--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>--%>
                <input type="submit" class="layui-btn" value="立即登录">
            </div>
        </div>
    </form>
</div>

<%--非空及格式验证--%>
</body>
</html>
