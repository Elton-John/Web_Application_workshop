<%--
  Created by IntelliJ IDEA.
  User: olga
  Date: 25.07.2020
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>

<div class="card-body">
    <form action="/user/add" method="post">
        <label>Name</label>
        <div class="input-group mb-3">

            <input type="text" class="form-control" name="username">
        </div>

        <label>Email</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="email">
        </div>

        <label>Password</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="password">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>

<%@include file="footer.jsp" %>