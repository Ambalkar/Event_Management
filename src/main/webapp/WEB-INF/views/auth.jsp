<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign In - SEVENT-MS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --accent-teal: #2dd4bf;
            --accent-green: #22c55e;
            --accent-gold: #fbbf24;
            --background-color: #07080a;
            --text-primary: #f4f4f5;
            --text-secondary: #d4d4d8;
            --border-color: rgba(255, 255, 255, 0.22);
            --card-shadow: 0 22px 60px rgba(0, 0, 0, 0.34);
        }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: 'Poppins', sans-serif;
            color: var(--text-primary);
            background:
                linear-gradient(90deg, rgba(7, 8, 10, 0.92), rgba(7, 8, 10, 0.72)),
                url('${pageContext.request.contextPath}/images/eventbg0.jpg') center/cover fixed no-repeat;
            display: grid;
            place-items: center;
            padding: 1.5rem;
            box-sizing: border-box;
        }

        .auth-shell {
            width: min(100%, 440px);
            background: linear-gradient(145deg, rgba(20, 23, 28, 0.98), rgba(7, 8, 10, 0.96));
            border: 1px solid var(--border-color);
            border-radius: 8px;
            box-shadow: var(--card-shadow);
            padding: 2rem;
        }

        .brand {
            display: inline-flex;
            align-items: center;
            gap: 0.75rem;
            color: var(--text-primary);
            text-decoration: none;
            font-size: 1.4rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
        }

        .brand i {
            color: var(--accent-teal);
        }

        h1 {
            margin: 0;
            font-size: 2rem;
        }

        .lede {
            color: var(--text-secondary);
            margin: 0.6rem 0 1.5rem;
            line-height: 1.6;
        }

        .alert {
            padding: 0.85rem 1rem;
            border-radius: 8px;
            margin-bottom: 1rem;
            border: 1px solid var(--border-color);
        }

        .alert.error {
            color: #fecaca;
            background: rgba(248, 113, 113, 0.15);
            border-color: rgba(248, 113, 113, 0.3);
        }

        .form-group {
            margin-bottom: 1rem;
        }

        label {
            display: block;
            margin-bottom: 0.45rem;
            color: var(--text-secondary);
            font-size: 0.9rem;
            font-weight: 600;
        }

        input {
            width: 100%;
            box-sizing: border-box;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            padding: 0.8rem 0.95rem;
            color: var(--text-primary);
            background: rgba(24, 26, 31, 0.86);
            font: inherit;
        }

        input:focus {
            outline: none;
            border-color: var(--accent-teal);
            box-shadow: 0 0 0 3px rgba(45, 212, 191, 0.16);
        }

        .btn {
            width: 100%;
            min-height: 46px;
            border: 0;
            border-radius: 8px;
            cursor: pointer;
            color: #04110e;
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            font: inherit;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.55rem;
        }

        .switch-link {
            margin: 1.25rem 0 0;
            color: var(--text-secondary);
            text-align: center;
        }

        .switch-link a {
            color: var(--accent-gold);
            text-decoration: none;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <main class="auth-shell">
        <a href="${pageContext.request.contextPath}/" class="brand">
            <i class="fas fa-calendar-alt"></i> EventMS
        </a>

        <c:choose>
            <c:when test="${mode == 'signup'}">
                <h1>Create account</h1>
                <p class="lede">Sign up to book events faster and keep your event details connected to your email.</p>
            </c:when>
            <c:otherwise>
                <h1>Sign in</h1>
                <p class="lede">Log in as a participant, or use the admin credentials to open the dashboard.</p>
            </c:otherwise>
        </c:choose>

        <c:if test="${not empty errorMessage}">
            <div class="alert error">
                <i class="fas fa-exclamation-circle"></i> ${errorMessage}
            </div>
        </c:if>

        <c:choose>
            <c:when test="${mode == 'signup'}">
                <form method="post" action="${pageContext.request.contextPath}/signup">
                    <input type="hidden" name="target" value="${target}">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input id="name" type="text" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" type="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" type="password" name="password" minlength="6" required>
                    </div>
                    <button type="submit" class="btn">
                        <i class="fas fa-user-plus"></i> Sign Up
                    </button>
                </form>
                <p class="switch-link">
                    Already have an account?
                    <a href="${pageContext.request.contextPath}/login?target=${target}">Log in</a>
                </p>
            </c:when>
            <c:otherwise>
                <form method="post" action="${pageContext.request.contextPath}/login">
                    <input type="hidden" name="target" value="${target}">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" type="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" type="password" name="password" required>
                    </div>
                    <button type="submit" class="btn">
                        <i class="fas fa-sign-in-alt"></i> Log In
                    </button>
                </form>
                <p class="switch-link">
                    New here?
                    <a href="${pageContext.request.contextPath}/signup?target=${target}">Create an account</a>
                </p>
            </c:otherwise>
        </c:choose>
    </main>
</body>
</html>
