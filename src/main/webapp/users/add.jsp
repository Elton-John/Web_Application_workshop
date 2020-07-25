<%--
  Created by IntelliJ IDEA.
  User: olga
  Date: 25.07.2020
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
</head>
<body>
<form action="/user/add" method="post">
    Let's add some new user!
    <label>
        Name:
        <input type="text" name="username">
    </label>
    <label>
        email:
        <input type="text" name="email">
    </label>
    <label>
        Password:
        <input type="text" name="password">
    </label>
    <button type="submit">save</button>
</form>
</body>
</html>
