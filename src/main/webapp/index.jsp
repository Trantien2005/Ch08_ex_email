<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Join our email list</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<div class="form-container">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>

    <c:if test="${message != null}">
        <p class="message"><i>${message}</i></p>
    </c:if>

    <form action="emailList" method="post" accept-charset="UTF-8">
        <input type="hidden" name="action" value="add">

        <label>Email:</label>
        <input type="email" name="email" value="${user.email}" required>

        <label>First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" required>

        <label>Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}" required>

        <button type="submit" class="btn-submit">Join Now</button>
    </form>
</div>

</body>
</html>
