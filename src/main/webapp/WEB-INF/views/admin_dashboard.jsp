<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #60a5fa;
            --secondary-color: #a78bfa;
            --success-color: #34d399;
            --danger-color: #f87171;
            --dark-color: #0f172a;
            --light-color: #ffffff;
            --gradient-start: #3b82f6;
            --gradient-end: #8b5cf6;
            --card-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.5);
            --hover-transform: translateY(-5px);
            --background-color: #0f172a;
            --card-background: rgba(15, 23, 42, 0.95);
            --text-primary: #ffffff;
            --text-secondary: #e2e8f0;
            --border-color: rgba(255, 255, 255, 0.3);
            --input-background: rgba(30, 41, 59, 0.8);
            --hover-background: rgba(255, 255, 255, 0.1);
            --container-background: rgba(15, 23, 42, 0.8);
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, var(--background-color) 0%, #1e293b 100%);
            color: var(--text-primary);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
            background: var(--container-background);
            border-radius: 20px;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .header-section {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            padding: 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            position: relative;
            box-shadow: var(--card-shadow);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .header-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, rgba(255,255,255,0.1) 25%, transparent 25%),
                        linear-gradient(-45deg, rgba(255,255,255,0.1) 25%, transparent 25%);
            background-size: 60px 60px;
            opacity: 0.1;
        }

        .header-section h1 {
            margin: 0;
            font-size: 2.5em;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            position: relative;
            color: var(--text-primary);
        }

        .home-btn {
            position: absolute;
            right: 20px;
            top: 20px;
            color: var(--text-primary);
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
            border: 1px solid rgba(255,255,255,0.4);
        }

        .home-btn:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .event-form {
            background: var(--card-background);
            padding: 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .event-form h2 {
            color: var(--text-primary);
            margin-bottom: 1.5rem;
            font-size: 1.75em;
            text-align: center;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.75rem;
            color: var(--text-primary);
            font-weight: 500;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid var(--border-color);
            border-radius: 10px;
            background: var(--input-background);
            color: var(--text-primary);
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            border-color: var(--primary-color);
            outline: none;
            background: var(--input-background);
            box-shadow: 0 0 0 3px rgba(96, 165, 250, 0.3);
        }

        .btn {
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 500;
            font-size: 1rem;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--text-primary);
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .btn-primary:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
            background: linear-gradient(135deg, #2563eb, #7c3aed);
        }

        .btn-danger {
            background: linear-gradient(135deg, #ef4444, #dc2626);
            color: var(--text-primary);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .btn-danger:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
            background: linear-gradient(135deg, #dc2626, #b91c1c);
        }

        .event-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-top: 2rem;
            background: var(--card-background);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
            table-layout: fixed;
        }

        .event-table th {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
            border-bottom: 2px solid var(--border-color);
            padding: 1rem;
            font-size: 0.9em;
            white-space: nowrap;
        }

        .event-table td {
            background: var(--card-background);
            color: var(--text-primary);
            border-bottom: 1px solid var(--border-color);
            padding: 1rem;
            vertical-align: middle;
            word-wrap: break-word;
            overflow: hidden;
        }

        .event-table tbody tr {
            background: var(--card-background);
            transition: all 0.3s ease;
        }

        .event-table tbody tr:nth-child(even) {
            background: rgba(30, 41, 59, 0.95);
        }

        .event-table tbody tr:hover {
            background: var(--hover-background);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .event-table input,
        .event-table textarea {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            background: var(--input-background);
            color: var(--text-primary);
            font-size: 0.9rem;
            transition: all 0.3s ease;
            box-sizing: border-box;
        }

        .event-table input:focus,
        .event-table textarea:focus {
            border-color: var(--primary-color);
            outline: none;
            background: var(--input-background);
            box-shadow: 0 0 0 3px rgba(96, 165, 250, 0.3);
        }

        .event-table textarea {
            min-height: 60px;
            resize: vertical;
            max-height: 120px;
        }

        .event-table .actions {
            display: flex;
            gap: 0.5rem;
            justify-content: flex-start;
            flex-wrap: wrap;
        }

        .event-table .btn {
            padding: 0.4rem 0.8rem;
            font-size: 0.85rem;
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            white-space: nowrap;
            min-width: 80px;
        }

        .event-table .btn i {
            font-size: 0.9rem;
        }

        .event-table .id-column {
            font-weight: 600;
            color: var(--primary-color);
            width: 60px;
        }

        .event-table .guest-count {
            font-weight: 500;
            color: var(--success-color);
            width: 100px;
        }

        .event-table .name-column {
            width: 15%;
        }

        .event-table .date-column {
            width: 12%;
        }

        .event-table .location-column {
            width: 15%;
        }

        .event-table .description-column {
            width: 25%;
        }

        .event-table .guest-limit-column {
            width: 10%;
        }

        .event-table .actions-column {
            width: 15%;
        }

        .event-table .empty-message {
            text-align: center;
            padding: 2rem;
            color: var(--text-secondary);
            font-style: italic;
        }

        .event-table .empty-message i {
            font-size: 2rem;
            margin-bottom: 1rem;
            color: var(--primary-color);
            opacity: 0.5;
        }

        .alert {
            padding: 1rem 1.5rem;
            border-radius: 10px;
            margin-bottom: 1.5rem;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            animation: slideIn 0.3s ease;
            border: 1px solid var(--border-color);
            background: var(--card-background);
            backdrop-filter: blur(10px);
        }

        .alert-danger {
            background: rgba(220, 38, 38, 0.2);
            color: #fca5a5;
            border-color: rgba(220, 38, 38, 0.4);
        }

        h2 {
            color: var(--text-primary);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        @media (max-width: 1200px) {
            .event-table {
                display: block;
                overflow-x: auto;
            }
            
            .event-table th,
            .event-table td {
                min-width: 120px;
            }
            
            .event-table .id-column {
                min-width: 60px;
            }
            
            .event-table .guest-count {
                min-width: 100px;
            }
            
            .event-table .actions {
                flex-direction: column;
                gap: 0.5rem;
            }
            
            .event-table .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header-section">
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">
                <i class="fas fa-home"></i> Home
            </a>
            <h1>Admin Dashboard</h1>
        </div>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">
                <i class="fas fa-exclamation-circle"></i> ${error}
            </div>
        </c:if>

        <div class="event-form">
            <h2>Add New Event</h2>
            <form method="post" action="admin">
                <input type="hidden" name="action" value="add">
                
                <div class="form-group">
                    <label for="name">Event Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="date">Date:</label>
                    <input type="date" id="date" name="date" required>
                </div>

                <div class="form-group">
                    <label for="location">Location:</label>
                    <input type="text" id="location" name="location" required>
                </div>

                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea id="description" name="description" rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label for="guest_limit">Guest Limit:</label>
                    <input type="number" id="guest_limit" name="guest_limit" min="1" required>
                </div>

                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-plus-circle"></i> Add Event
                </button>
            </form>
        </div>

        <h2 style="color: var(--text-primary); text-align: center; margin: 2rem 0;">Existing Events</h2>
        <table class="event-table">
            <thead>
                <tr>
                    <th class="id-column">ID</th>
                    <th class="name-column">Name</th>
                    <th class="date-column">Date</th>
                    <th class="location-column">Location</th>
                    <th class="description-column">Description</th>
                    <th class="guest-limit-column">Guest Limit</th>
                    <th class="guest-count">Current Guests</th>
                    <th class="actions-column">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="event" items="${events}">
                    <tr>
                        <form method="post" action="admin">
                            <input type="hidden" name="event_id" value="${event.id}">
                            <td class="id-column">${event.id}</td>
                            <td class="name-column"><input type="text" name="name" value="${event.name}" required></td>
                            <td class="date-column"><input type="date" name="date" value="${event.date}" required></td>
                            <td class="location-column"><input type="text" name="location" value="${event.location}" required></td>
                            <td class="description-column"><textarea name="description">${event.description}</textarea></td>
                            <td class="guest-limit-column"><input type="number" name="guest_limit" value="${event.guestLimit}" min="1" required></td>
                            <td class="guest-count">${event.currentGuests}</td>
                            <td class="actions-column">
                                <div class="actions">
                                    <button type="submit" name="action" value="edit" class="btn btn-primary">
                                        <i class="fas fa-edit"></i> Update
                                    </button>
                                    <button type="submit" name="action" value="delete" class="btn btn-danger" 
                                            onclick="return confirm('Are you sure you want to delete this event?');">
                                        <i class="fas fa-trash"></i> Delete
                                    </button>
                                </div>
                            </td>
                        </form>
                    </tr>
                </c:forEach>
                <c:if test="${empty events}">
                    <tr>
                        <td colspan="8" class="empty-message">
                            <i class="fas fa-calendar-times"></i>
                            <div>No events found.</div>
                        </td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</body>
</html>