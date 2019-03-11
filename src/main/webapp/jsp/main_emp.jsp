<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/28
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
    <script>
        $().ready(function () {
            var empusername=$("#testname").text();
            $("#msglist").ready(function () {
                //获得该员工所在部门的消息的消息总数
                //统计已读，未读
                $.ajax({
                    url:"../emp/getmsgcount?username="+empusername,
                    dataType:"JSON",
                    type:"GET",
                    success:function (data) {
                        $("#msglist").text(data.notRead+"/"+data.totalNum);

                    }
                })

            });
            //点击查看所有消息
            $("#msglist").click(function () {

                // alert(empusername);
                $.ajax({
                    //获得当前员工所在部门的公告
                    url:"../emp/getmsg?username="+empusername,
                    dataType:"JSON",
                    type:"GET",
                    success:function (data) {
                        $("#aname").text(data.aname);
                        $("#date").text(data.date);
                        $("#content").text(data.content);
                    }
                })
            });

        });
    </script>
</head>
<body>
员工主页
请假申请
<c:if test="${sessionScope.obj!=null}">
    员工的用户名：
    <div id="testname">${sessionScope.obj.username}</div>
</c:if>
<i id="msglist" class="layui-icon layui-icon-notice" style="font-size: 14px; color: #ff2b5b;">当前消息数：3</i>
来自：<div id="aname"></div>
发布时间：<div id="date"></div>
内容：<div id="content"></div>

</body>
</html>
