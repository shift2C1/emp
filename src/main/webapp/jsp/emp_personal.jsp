<%--
  Created by IntelliJ IDEA.
  User: 王超
  Date: 2019/2/26
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <%--<script type="text/javascript" src="../js/emp_personal.js"></script>--%>
</head>
<body>
员工个人信息<br>
    <form:form modelAttribute="personalinformation">
        <table>
            <tr>
                <td>id</td>
                <td><form:input path="id" readonly="true"></form:input></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><form:input path="name" readonly="true"></form:input></td>
            </tr>
            <tr>
                <td>年龄</td>
                <td><form:input path="age" readonly="true"></form:input></td>
            </tr>
            <tr>
                <td>生日</td>
                <td><form:input path="birthday" readonly="true"></form:input></td>
            </tr>
            <tr>
                <td>部门</td>
                <td><form:input path="depid" readonly="true"></form:input></td>
            </tr>
            <tr>
                <td>身份证</td>
                <td><form:input path="idcard" readonly="true"></form:input></td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                    <c:if test="${requestScope.personalinformation.sex==0}">
                        男
                    </c:if>
                    <c:if test="${requestScope.personalinformation.sex==1}">
                        女
                    </c:if>
                </td>
            </tr>
        </table>
    </form:form>
<%--${requestScope.personalinformation.name}--%>
<a id="back" href="../jsp/emp_show_all.jsp">知道了</a>
</body>
</html>
