<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

</head>

<body>

<div class="container">

    <form method="POST" action="${contextPath}/user/custom_login_authenticate" class="form-signin">
        <h2 class="form-heading">Custom Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${msg}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${errorMsg}</span>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
        </div>

    </form>

</div>
<!-- /container -->
</html>
