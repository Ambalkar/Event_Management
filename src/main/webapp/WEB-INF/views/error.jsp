<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error - SEVENT-MS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tokens.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/components.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            display: grid;
            place-items: center;
            min-height: 100vh;
            padding: 2rem;
            text-align: center;
        }
        .error-card {
            max-width: 580px;
            width: 100%;
            background: var(--color-surface);
            border: 1px solid var(--color-border);
            border-radius: var(--radius);
            padding: 3rem 2rem;
            box-shadow: var(--card-shadow);
        }
        .error-icon {
            font-size: 4rem;
            color: var(--color-danger);
            margin-bottom: 1.5rem;
        }
        .error-card h1 {
            font-size: 2.2rem;
            margin-bottom: 1rem;
            color: var(--color-text-primary);
        }
        .error-card p {
            color: var(--color-text-secondary);
            margin-bottom: 1.5rem;
            font-size: 1.05rem;
            line-height: 1.6;
        }
        .technical-details {
            text-align: left;
            background: rgba(0, 0, 0, 0.4);
            border: 1px solid var(--color-border);
            border-radius: var(--radius);
            padding: 1.25rem;
            margin-bottom: 2rem;
            font-family: monospace;
            font-size: 0.9rem;
            overflow-x: auto;
        }
        .tech-row {
            margin-bottom: 0.5rem;
        }
        .tech-row:last-child {
            margin-bottom: 0;
        }
        .tech-label {
            color: var(--color-accent-teal);
            font-weight: 700;
        }
        .tech-val {
            color: var(--color-text-primary);
        }
    </style>
</head>
<body>
    <div class="error-card">
        <div class="error-icon">
            <i class="fas fa-exclamation-triangle"></i>
        </div>
        <h1>Oops! Something went wrong</h1>
        <p>An unexpected error occurred. Please try returning to the homepage or contact support if the issue persists.</p>
        
        <div class="technical-details">
            <div class="tech-row">
                <span class="tech-label">Status Code:</span>
                <span class="tech-val"><c:out value="${status != null ? status : '500'}"/></span>
            </div>
            <div class="tech-row">
                <span class="tech-label">Error:</span>
                <span class="tech-val"><c:out value="${error != null ? error : 'Internal Server Error'}"/></span>
            </div>
            <c:if test="${not empty message}">
                <div class="tech-row">
                    <span class="tech-label">Message:</span>
                    <span class="tech-val"><c:out value="${message}"/></span>
                </div>
            </c:if>
            <c:if test="${not empty path}">
                <div class="tech-row">
                    <span class="tech-label">Path:</span>
                    <span class="tech-val"><c:out value="${path}"/></span>
                </div>
            </c:if>
        </div>

        <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;">
            <a href="${pageContext.request.contextPath}/" class="btn btn-primary">
                <i class="fas fa-home"></i> Return to Events
            </a>
            <a href="${pageContext.request.contextPath}/health" class="btn btn-secondary">
                <i class="fas fa-heartbeat"></i> Check System Health
            </a>
        </div>
    </div>
</body>
</html>
