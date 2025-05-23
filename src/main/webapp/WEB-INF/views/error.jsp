<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
</head>
<body>
    <div class="container">
        <div class="error-container">
            <h1>Oops! Something went wrong</h1>
            <div class="error-message">
                ${error}
            </div>
            <div class="navigation">
                <a href="user" class="btn btn-secondary">Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>