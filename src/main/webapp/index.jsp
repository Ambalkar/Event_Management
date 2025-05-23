<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to Event Management System</h1>
        <div class="button-group">
            <a href="${pageContext.request.contextPath}/admin" class="btn">Admin Dashboard</a>
            <a href="${pageContext.request.contextPath}/user" class="btn">User Portal</a>
        </div>
    </div>
</body>
</html>