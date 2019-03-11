<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/18
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--el-->
<%@ page isELIgnored="false" %>
<!--jstl-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>人力资源管理系统</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>
    <script type="text/javascript" src="../js/emp_show_all.js"></script>

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">人力资源管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">
                <a href="javascript:void(0)">系统管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:void(0)" id="sys_add_admin">添加管理员</a></dd>
                    <dd><a href="javascript:;" id="sys_delete_admin">删除管理员</a></dd>
                </dl>
            </li>
            <%--<li class="layui-nav-item">--%>
                <%--<a href="javascript:;">其它系统</a>--%>
                <%--<dl class="layui-nav-child">--%>
                    <%--<dd><a href="">邮件管理</a></dd>--%>
                    <%--<dd><a href="">消息管理</a></dd>--%>
                    <%--<dd><a href="">授权管理</a></dd>--%>
                <%--</dl>--%>
            <%--</li>--%>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;" >
                    <img  class="layui-nav-img">
                    <%--管理员的登录名--%>
                    <%--${sessionScope.admin.username}--%>
                    <font id="admin_name">${sessionScope.obj.username}</font>

                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="javascript:void(0)" id="admin_info">管理员资料</a>
                        <%--<div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">--%>
                            <%--<button data-method="notice" class="layui-btn">管理员资料</button>--%>
                        <%--</div>--%>
                    </dd>
                    <dd><a href="javascript:void(0)" id="update_password">修改登录密码</a></dd>
                    <dd><a href="javascript:void(0)" id="anouncement_add">发公告</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="../account/quitsystem">退出系统</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">部门管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" id="dep_get_deps">查看部门</a></dd>
                        <dd><a href="javascript:;" id="dep_add_dep">添加部门</a></dd>
                        <%--<dd><a href="javascript:;" id="dep_delete_dep">删除部门</a></dd>--%>
                        <%--<dd><a href="">超链接</a></dd>--%>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">招聘管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" id="recruit_add">添加招聘人员</a></dd>
                        <dd><a href="javascript:;" id="recruit_delete">删除招聘人员</a></dd>
                        <dd><a href="javascript:;" id="recruit_get_recruiters">查看招聘人员</a></dd>
                        <dd><a href="javascript:;" id="recruit_get_details">详细查看招聘人员</a></dd>
                        <dd><a href="javascript:;" id="recruit_get_recruited">录用招聘人员查询</a></dd>
                        <dd><a href="javascript:;" id="recruit_get_notrecruited">非录用招聘人员查询</a></dd>
                        <%--<dd><a href="">超链接</a></dd>--%>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:void(0)">员工管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" id="emp_add">添加员工</a></dd>
                        <%--<dd><a href="javascript:;" id="emp_delete">删除员工</a></dd>--%>
                        <dd><a href="javascript:;" id="emp_get_emps">查看员工</a></dd>
                        <%--<dd><a href="javascript:;" id="emp_get_details">详细查看招聘人员</a></dd>--%>
                        <%--<dd><a href="javascript:;" id="emp_get_emps_by_dep">部门查询员工</a></dd>--%>

                        <%--<dd><a href="">超链接</a></dd>--%>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:void(0)">薪资管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" id="salary_add">添加员工薪资</a></dd>
                        <%--<dd><a href="javascript:;" id="salary_delete">删除员工薪资</a></dd>--%>
                        <dd><a href="javascript:;" id="salary_get">查看员工薪资</a></dd>
                        <%--<dd><a href="javascript:;" id="salary_get_by_id">编号查询薪资</a></dd>--%>
                        <%--<dd><a href="javascript:;" id="salary_get_by_time">按时间查询薪资</a></dd>--%>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:void(0)">奖励惩罚</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" id="punish_add">添加奖惩</a></dd>
                        <dd><a href="javascript:;" id="punish_delete">删除奖惩</a></dd>
                        <dd><a href="javascript:;" id="punish_get">查看奖惩</a></dd>
                        <dd><a href="javascript:;" id="punish_detail">详细查看奖惩</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:void(0)">培训管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" id="train_add_train">添加培训</a></dd>
                        <dd><a href="javascript:;" id="train_delete_train">删除培训</a></dd>
                        <dd><a href="javascript:;" id="train_get_trains">查看培训</a></dd>
                        <dd><a href="javascript:;" id="train_get_train_detalis">详细查看培训</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <%--<p id="p">123</p>--%>
            <%--'<div id="admin_info" style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">' +--%>
            <%--'id：<font id="info-id"></font>  <br>' +--%>
            <%--'用户名：<font id="info-name"></font><br>' +--%>
            <%--'密码：<font id="info-pass"></font><br>' +--%>
            <%--'级别：<font id="info-level"></font><br>' +--%>
            <%--'</div>'--%>
            <iframe id="showdata" src="" style="width: 100%;height: 100%;border: 0px"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © 版权所有 王超
    </div>
</div>

<script src="../layui/layui.js" ></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
