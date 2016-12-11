<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/11
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" action="add" commandName="user">

        <h4 align="center"><u>登录页</u></h4>
        <table align="center">
            <tr>
                <td>用户名:</td>
                <td><form:input path="username" /><font color="red">
                    <form:errors	path="username" /></font></td>
            </tr>

            <tr>
                <td>密码:</td>

                <td><form:password path="password" /><font color="red"> <form:errors
                        path="password" /></font>



                </td>
            </tr>
            <tr>
                <td>邮箱:</td>

                <td>


                    <form:input path="email" /><font color="red"> <form:errors
                        path="email" /></font>
                </td>
            </tr>
            <tr>
                <td>年龄:</td>
                <td><input type="number" name="age" value="10" ><font color="red"> <form:errors path="age" /></font></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>

    </form:form>
</body>
</html>
