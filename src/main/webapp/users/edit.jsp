<%--
  Created by IntelliJ IDEA.
  User: olga
  Date: 25.07.2020
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/users/header.jsp" %>

<div class="card-body">
    <form method="post">
        <label>Name</label>
        <div class="input-group mb-3">

            <input type="text" class="form-control" name="username" value="${user.username}">
        </div>

        <label>Email</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="email" value="${user.email}">
        </div>

        <label>Password</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="password">
        </div>
        <input type="hidden" name="id" value="${user.id}">
        <button type="submit" class="btn btn-primary">Submit</button>
</div>

</form>


<%--<div class="card-body">--%>
<%--    <form>--%>
<%--        <div class="form-group">--%>
<%--            <label for="formGroupExampleInput">Name</label>--%>
<%--            <input type="text" name="username" value="${user.username}" class="form-control" id="formGroupExampleInput">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="formGroupExampleInput2">Email</label>--%>
<%--            <input type="text" name="email" value="${user.username}" class="form-control" id="formGroupExampleInput2">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="formGroupExampleInput2">Password</label>--%>
<%--            <input type="text" name="password" class="form-control" id="formGroupExampleInput3">--%>
<%--        </div>--%>
<%--        <input type="hidden" name="id" value="${user.id}">--%>
<%--        <button type="submit" class="btn btn-primary">Submit</button>--%>
<%--    </form>--%>
<%--</div>--%>

<%@ include file="/users/footer.jsp" %>