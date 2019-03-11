<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/23
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui/css/layui.css"  media="all">
    <script>
        $().ready(function () {
            var empusername=$("#testname").text();
            $.ajax({
                //获得当前员工所在部门的公告
                url:"test/getmsg?username=wangwu",
                dataType:"JSON",
                type:"GET",
                success:function (data) {
                    $("#aname").text(data.aname);
                    $("#date").text(data.date);
                    $("#content").text(data.content);
                    // alert(111);
                    // alert(data);
                    // alert(data.aname);
                    // alert(data.date);
                    // alert(data.content);
                }
            })
        });
    </script>
</head>
<body>

    <c:if test="${sessionScope.obj!=null}">
        员工的用户名：
        <div id="testname">${sessionScope.obj.username}</div>
    </c:if>

    来自：<div id="aname"></div>
    发布时间：<div id="date"></div>
    内容：<div id="content"></div>

</body>
</html>
