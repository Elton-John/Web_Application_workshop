<%--
  Created by IntelliJ IDEA.
  User: olga
  Date: 25.07.2020
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit</title>
</head>
<body>
<form method="post">
    <label>
        imię:
        <input type="text" name="username" value="${user.username}">
    </label>
    <label>
        email:
        <input type="text" name="email" value="${user.username}">
    </label>
    <label>
        password:
        <input type="text" name="password" >
    </label>
    <input type="hidden" name="id" value="${user.id}">
    <button type="submit">save</button>
</form>
</body>
</html>
