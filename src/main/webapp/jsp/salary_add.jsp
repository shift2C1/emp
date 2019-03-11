<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/3/6
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../js/salary_add.js"></script>

</head>
<body>
<%--添加薪水--%>
    <%--下拉列表动态选取员工部门，选区部门后，将该部门的员工下拉列表数据传为员工--%>
    <%--部门--%>
    <%--员工--%>
    <%--缺席--%>
    <%--迟到--%>
    <%--时间yyyy-MM--%>
<form class="layui-form" action="javascript:void(0)">
    <div class="layui-form-item">
        <label class="layui-form-label">部门</label>
        <div class="layui-input-inline">
            <%--<form:select path="" items=""></form:select>--%>
            <select name="depid"  id="depid"  lay-filter="depid">
                <%--<option value="test">test</option>--%>
                <%--<option value="test1">test1</option>--%>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">员工</label>
        <div class="layui-input-inline">
            <%--<form:select path="" items=""></form:select>--%>
            <select name="empid"  id="empid" >
                <%--<option value="test">test</option>--%>
                <%--<option value="test1">test1</option>--%>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">迟到次数</label>
        <div class="layui-input-inline">
            <input type="text" name="overtime"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">缺勤次数</label>
        <div class="layui-input-inline">
            <input type="text" name="absent"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">保险等</label>
        <div class="layui-input-inline">
            <input type="text" name="safty"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">时间</label>
        <div class="layui-input-inline">
            <input type="text" name="yearmonth"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>--%>
                <input lay-ignore="" type="submit" class="layui-btn" lay-filter="demo1" value="现在添加" id="submit">

        </div>
    </div>
</form>

</body>
</html>
