<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/23
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>

    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/admin_updatepassword.js"></script>
    <script type="text/javascript" src="../layui/layui.js"></script>
</head>
<body>

<form action="../admin/updatepassword" method="post">
    <table>
        <tr>
            <td>
                id<input readonly type="text" name="id" id="id" value="${requestScope.admin.id}"></td>

        </tr>
        <tr>
            <td>
                username<input readonly type="text" name="username" id="username" value="${requestScope.admin.username}"></td>

        </tr>
        <tr>
            <td>
                level<input readonly type="text" name="level" id="level" value="${requestScope.admin.level}">

            </td>
        </tr>
        <tr>
            <td><%--失去焦点事件判断原密码--%>
                输入原密码<input type="text" name="orignalpassword" id="orignalpassword"></td>

        </tr>
        <%--初始载入网页时候把下边两个标签隐藏，原始密码验证正确之后再显示--%>
        <tr>
            <td >输入新密码<input type="text" name="cunrrentpassword" id="newpass"></td>
        </tr>
        <tr>
            <td class=""><input type="submit" value="确认修改" id="submit" disabled></td>
        </tr>
    </table>




</form>
</body>
</html>
