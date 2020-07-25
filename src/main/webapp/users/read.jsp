<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: olga
  Date: 25.07.2020
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>read</title>
</head>
<body>
<p>
<c:out value="${user.id}"></c:out></p>
<p>
<c:out value="${user.username}"></c:out></p>
<p>
<c:out value="${user.email}"></c:out></p>

</body>
</html>
