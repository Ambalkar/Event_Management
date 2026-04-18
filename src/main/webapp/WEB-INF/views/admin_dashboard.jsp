<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Portal - Event Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --page-bg: #060708;
            --panel-bg: rgba(14, 15, 18, 0.96);
            --panel-soft: rgba(26, 28, 33, 0.9);
            --panel-line: rgba(230, 230, 230, 0.16);
            --panel-line-strong: rgba(230, 230, 230, 0.28);
            --metal-1: #e5e7eb;
            --metal-2: #a3a8b0;
            --metal-3: #656b75;
            --metal-4: #30343a;
            --accent-teal: #2dd4bf;
            --accent-green: #22c55e;
            --accent-gold: #fbbf24;
            --accent-coral: #fb7185;
            --ink: #f4f4f5;
            --muted: #b8bbc2;
            --muted-dark: #7e838c;
            --success: #8dd5a5;
            --danger: #f87171;
            --shadow: 0 24px 60px rgba(0, 0, 0, 0.42);
            --radius: 8px;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: 'Poppins', sans-serif;
            color: var(--ink);
            background:
                radial-gradient(circle at 18% 0%, rgba(45, 212, 191, 0.14), transparent 30%),
                radial-gradient(circle at 82% 6%, rgba(251, 191, 36, 0.12), transparent 28%),
                linear-gradient(135deg, #050607 0%, #111318 50%, #050607 100%);
        }

        body::before {
            content: '';
            position: fixed;
            inset: 0;
            pointer-events: none;
            background-image:
                linear-gradient(rgba(255,255,255,0.025) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,0.025) 1px, transparent 1px);
            background-size: 36px 36px;
            mask-image: linear-gradient(to bottom, rgba(0,0,0,0.75), transparent 85%);
        }

        .admin-shell {
            width: min(1440px, calc(100% - 32px));
            margin: 0 auto;
            padding: 24px 0 48px;
            position: relative;
            z-index: 1;
        }

        .topbar {
            min-height: 72px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 20px;
            background: rgba(8, 9, 11, 0.88);
            border: 1px solid var(--panel-line);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            backdrop-filter: blur(14px);
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 14px;
            min-width: 0;
        }

        .brand-mark {
            width: 46px;
            height: 46px;
            display: grid;
            place-items: center;
            border-radius: var(--radius);
            background: linear-gradient(145deg, var(--accent-teal), var(--accent-green));
            color: #04110e;
            box-shadow: inset 0 1px 0 rgba(255,255,255,0.6), 0 12px 28px rgba(45, 212, 191, 0.28);
        }

        .brand h1 {
            margin: 0;
            font-size: 1.35rem;
            letter-spacing: 0;
        }

        .brand p {
            margin: 0.15rem 0 0;
            color: var(--muted);
            font-size: 0.9rem;
        }

        .top-actions {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            justify-content: flex-end;
        }

        .nav-pill,
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-height: 40px;
            padding: 0.7rem 1rem;
            border-radius: var(--radius);
            border: 1px solid var(--panel-line-strong);
            color: var(--ink);
            text-decoration: none;
            font-weight: 600;
            font-size: 0.9rem;
            cursor: pointer;
            transition: transform 0.2s ease, border-color 0.2s ease, background 0.2s ease;
            background: rgba(255,255,255,0.06);
        }

        .nav-pill:hover,
        .btn:hover {
            transform: translateY(-2px);
            border-color: rgba(45, 212, 191,0.45);
            background: rgba(45, 212, 191,0.14);
        }

        .hero-panel {
            margin-top: 20px;
            padding: 28px;
            border-radius: var(--radius);
            border: 1px solid var(--panel-line);
            background:
                linear-gradient(135deg, rgba(45, 212, 191, 0.16), transparent 35%),
                linear-gradient(225deg, rgba(251, 191, 36, 0.14), transparent 40%),
                linear-gradient(135deg, rgba(28, 30, 35, 0.96), rgba(7, 8, 10, 0.98));
            box-shadow: var(--shadow);
            overflow: hidden;
            position: relative;
        }

        .hero-panel::after {
            content: '';
            position: absolute;
            inset: 0;
            pointer-events: none;
            background: linear-gradient(115deg, transparent 0%, rgba(255,255,255,0.08) 45%, transparent 55%);
            opacity: 0.7;
        }

        .hero-copy {
            position: relative;
            z-index: 1;
            max-width: 760px;
        }

        .eyebrow {
            margin: 0 0 8px;
            color: var(--accent-teal);
            font-weight: 700;
            text-transform: uppercase;
            font-size: 0.78rem;
            letter-spacing: 0;
        }

        .hero-copy h2 {
            margin: 0;
            font-size: 3.75rem;
            line-height: 1.02;
            letter-spacing: 0;
            background: linear-gradient(90deg, #ffffff 0%, var(--accent-teal) 42%, var(--accent-gold) 78%, #f5f5f5 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-copy p:last-child {
            max-width: 660px;
            margin: 14px 0 0;
            color: var(--muted);
            font-size: 1rem;
            line-height: 1.7;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 14px;
            margin-top: 20px;
        }

        .stat-card {
            min-height: 132px;
            padding: 18px;
            border-radius: var(--radius);
            border: 1px solid var(--panel-line);
            background: linear-gradient(145deg, rgba(24, 26, 31, 0.96), rgba(10, 11, 13, 0.96));
            box-shadow: 0 16px 38px rgba(0,0,0,0.25);
            position: relative;
            overflow: hidden;
        }

        .stat-card::before {
            content: '';
            position: absolute;
            inset: 0 0 auto 0;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold), var(--accent-green));
        }

        .stat-card i {
            color: var(--accent-gold);
            font-size: 1.25rem;
        }

        .stat-card strong {
            display: block;
            margin-top: 18px;
            font-size: 2rem;
            line-height: 1;
        }

        .stat-card span {
            display: block;
            margin-top: 8px;
            color: var(--muted);
            font-size: 0.9rem;
        }

        .console-grid {
            display: grid;
            grid-template-columns: minmax(320px, 420px) minmax(0, 1fr);
            gap: 20px;
            margin-top: 20px;
            align-items: start;
        }

        .panel {
            border-radius: var(--radius);
            border: 1px solid var(--panel-line);
            background: var(--panel-bg);
            box-shadow: var(--shadow);
            overflow: hidden;
        }

        .panel-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 14px;
            padding: 18px 20px;
            border-bottom: 1px solid var(--panel-line);
            background:
                linear-gradient(135deg, rgba(45, 212, 191, 0.08), transparent),
                linear-gradient(135deg, rgba(255,255,255,0.08), rgba(255,255,255,0.02));
        }

        .panel-header h2 {
            margin: 0;
            font-size: 1.1rem;
        }

        .panel-header p {
            margin: 4px 0 0;
            color: var(--muted);
            font-size: 0.86rem;
        }

        .panel-badge {
            white-space: nowrap;
            padding: 0.45rem 0.7rem;
            border-radius: var(--radius);
            background: rgba(255,255,255,0.08);
            border: 1px solid var(--panel-line);
            color: var(--accent-teal);
            font-size: 0.78rem;
            font-weight: 700;
            text-transform: uppercase;
        }

        form {
            margin: 0;
        }

        .event-form {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 16px;
        }

        label {
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--metal-1);
            font-weight: 600;
            font-size: 0.9rem;
            margin-bottom: 8px;
        }

        input,
        textarea {
            width: 100%;
            border: 1px solid var(--panel-line);
            border-radius: var(--radius);
            background: #101217;
            color: var(--ink);
            padding: 0.85rem 0.9rem;
            font-family: inherit;
            font-size: 0.95rem;
            outline: none;
            transition: border-color 0.2s ease, box-shadow 0.2s ease, background 0.2s ease;
        }

        textarea {
            min-height: 106px;
            resize: vertical;
        }

        input:focus,
        textarea:focus {
            border-color: rgba(229, 231, 235, 0.65);
            box-shadow: 0 0 0 3px rgba(229, 231, 235, 0.12);
            background: #14171d;
        }

        .form-actions {
            display: flex;
            gap: 10px;
            margin-top: 18px;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            color: #04110e;
            border-color: rgba(45,212,191,0.45);
        }

        .btn-secondary {
            background: linear-gradient(135deg, #4b515b, #242830);
        }

        .btn-danger {
            background: linear-gradient(135deg, #6f1d1d, #3d1010);
            border-color: rgba(248, 113, 113, 0.35);
        }

        .btn-danger:hover {
            border-color: rgba(248, 113, 113, 0.65);
            background: linear-gradient(135deg, #842323, #4a1212);
        }

        .table-wrap {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            min-width: 920px;
        }

        th,
        td {
            padding: 14px 16px;
            text-align: left;
            border-bottom: 1px solid var(--panel-line);
            vertical-align: top;
        }

        th {
            position: sticky;
            top: 0;
            background: #181b21;
            color: var(--metal-1);
            font-size: 0.76rem;
            text-transform: uppercase;
            letter-spacing: 0;
            z-index: 1;
        }

        td {
            color: var(--muted);
            font-size: 0.92rem;
        }

        tbody tr {
            transition: background 0.2s ease;
        }

        tbody tr:hover {
            background: rgba(255,255,255,0.045);
        }

        .id-cell,
        .count-cell {
            color: var(--metal-1);
            font-weight: 700;
        }

        .event-name,
        .user-name {
            color: var(--ink);
            font-weight: 700;
        }

        .muted {
            color: var(--muted-dark);
        }

        .status-chip,
        .digital-chip {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 0.42rem 0.65rem;
            border-radius: var(--radius);
            border: 1px solid var(--panel-line);
            background: rgba(255,255,255,0.065);
            color: var(--metal-1);
            font-weight: 700;
            font-size: 0.78rem;
            white-space: nowrap;
        }

        .status-chip.good {
            color: var(--success);
            border-color: rgba(141, 213, 165, 0.28);
            background: rgba(141, 213, 165, 0.08);
        }

        .row-actions {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .row-actions .btn {
            min-height: 34px;
            padding: 0.45rem 0.65rem;
            font-size: 0.78rem;
        }

        .empty-state {
            text-align: center;
            color: var(--muted);
            padding: 34px 16px;
        }

        .empty-state i {
            display: block;
            margin-bottom: 10px;
            color: var(--metal-2);
            font-size: 1.6rem;
        }

        .alert {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 20px;
            padding: 14px 16px;
            border-radius: var(--radius);
            border: 1px solid var(--panel-line);
            background: var(--panel-bg);
        }

        .alert-danger {
            color: #ffc9c9;
            border-color: rgba(248, 113, 113, 0.35);
            background: rgba(120, 30, 30, 0.18);
        }

        .alert-success {
            color: #b8f0c8;
            border-color: rgba(141, 213, 165, 0.3);
            background: rgba(50, 110, 70, 0.16);
        }

        @media (max-width: 980px) {
            .console-grid,
            .stats-grid {
                grid-template-columns: 1fr;
            }

            .topbar {
                align-items: flex-start;
                flex-direction: column;
            }

            .top-actions {
                width: 100%;
                justify-content: stretch;
            }

            .nav-pill {
                flex: 1;
            }
        }

        @media (max-width: 640px) {
            .admin-shell {
                width: min(100% - 20px, 1440px);
                padding-top: 10px;
            }

            .hero-panel,
            .event-form,
            .panel-header {
                padding: 16px;
            }

            .form-actions .btn,
            .nav-pill {
                width: 100%;
            }

            .hero-copy h2 {
                font-size: 2.4rem;
            }
        }
    </style>
</head>
<body>
    <main class="admin-shell">
        <nav class="topbar">
            <div class="brand">
                <div class="brand-mark">
                    <i class="fas fa-user-shield"></i>
                </div>
                <div>
                    <h1>EventMS Admin</h1>
                    <p>Manage events, seats, and participant records.</p>
                </div>
            </div>
            <div class="top-actions">
                <a href="${pageContext.request.contextPath}/" class="nav-pill">
                    <i class="fas fa-home"></i> Home
                </a>
                <a href="${pageContext.request.contextPath}/user" class="nav-pill">
                    <i class="fas fa-calendar-alt"></i> User Portal
                </a>
                <a href="#bookings" class="nav-pill">
                    <i class="fas fa-users"></i> Bookings
                </a>
            </div>
        </nav>

        <section class="hero-panel">
            <div class="hero-copy">
                <p class="eyebrow">Control Room</p>
                <h2>Admin Dashboard</h2>
                <p>Track event capacity, manage live event records, and review participant booking details from one dark metallic console.</p>
            </div>
        </section>

        <section class="stats-grid" aria-label="Admin dashboard summary">
            <article class="stat-card">
                <i class="fas fa-calendar-check"></i>
                <strong>${totalEvents}</strong>
                <span>Total events</span>
            </article>
            <article class="stat-card">
                <i class="fas fa-ticket-alt"></i>
                <strong>${totalBookings}</strong>
                <span>Total bookings</span>
            </article>
            <article class="stat-card">
                <i class="fas fa-chair"></i>
                <strong>${totalCapacity}</strong>
                <span>Total capacity</span>
            </article>
            <article class="stat-card">
                <i class="fas fa-user-friends"></i>
                <strong>${totalGuests}</strong>
                <span>Registered guests</span>
            </article>
        </section>

        <c:if test="${not empty successMessage}">
            <div class="alert alert-success">
                <i class="fas fa-check-circle"></i> ${successMessage}
            </div>
        </c:if>

        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger">
                <i class="fas fa-exclamation-circle"></i> ${errorMessage}
            </div>
        </c:if>

        <section class="console-grid">
            <aside class="panel">
                <div class="panel-header">
                    <div>
                        <h2 id="formTitle">Create Event</h2>
                        <p>Add a new event or edit a selected event.</p>
                    </div>
                    <span class="panel-badge">Event</span>
                </div>

                <form method="post" action="${pageContext.request.contextPath}/admin" id="eventForm" class="event-form">
                    <input type="hidden" name="action" value="add" id="formAction">
                    <input type="hidden" name="event_id" id="eventId">

                    <div class="form-group">
                        <label for="name"><i class="fas fa-signature"></i> Event Name</label>
                        <input type="text" id="name" name="name" placeholder="Annual Tech Summit" required>
                    </div>

                    <div class="form-group">
                        <label for="date"><i class="fas fa-calendar-day"></i> Date</label>
                        <input type="date" id="date" name="date" required>
                    </div>

                    <div class="form-group">
                        <label for="location"><i class="fas fa-map-marker-alt"></i> Location</label>
                        <input type="text" id="location" name="location" placeholder="Main Auditorium" required>
                    </div>

                    <div class="form-group">
                        <label for="description"><i class="fas fa-align-left"></i> Description</label>
                        <textarea id="description" name="description" placeholder="Add event details for participants."></textarea>
                    </div>

                    <div class="form-group">
                        <label for="guest_limit"><i class="fas fa-users"></i> Guest Limit</label>
                        <input type="number" id="guest_limit" name="guest_limit" min="1" placeholder="100" required>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary" id="submitBtn">
                            <i class="fas fa-plus-circle"></i> Add Event
                        </button>
                        <button type="button" class="btn btn-secondary" id="cancelBtn" style="display: none;" onclick="resetForm()">
                            <i class="fas fa-times"></i> Cancel
                        </button>
                    </div>
                </form>
            </aside>

            <section class="panel">
                <div class="panel-header">
                    <div>
                        <h2>Event Inventory</h2>
                        <p>Update schedules, venue details, and booking limits.</p>
                    </div>
                    <span class="panel-badge">${totalEvents} Records</span>
                </div>

                <div class="table-wrap">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Event</th>
                                <th>Date</th>
                                <th>Location</th>
                                <th>Capacity</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="event" items="${events}">
                                <tr>
                                    <td class="id-cell">#${event.id}</td>
                                    <td>
                                        <div class="event-name">${event.name}</div>
                                        <div class="muted">${event.description}</div>
                                    </td>
                                    <td>${event.date}</td>
                                    <td>${event.location}</td>
                                    <td class="count-cell">${event.currentGuests} / ${event.guestLimit}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${event.currentGuests lt event.guestLimit}">
                                                <span class="status-chip good"><i class="fas fa-circle"></i> Open</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="status-chip"><i class="fas fa-lock"></i> Full</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <div class="row-actions">
                                            <button type="button" class="btn btn-primary update-btn"
                                                data-id="${event.id}"
                                                data-name="${event.name}"
                                                data-date="${event.date}"
                                                data-location="${event.location}"
                                                data-description="${event.description}"
                                                data-guest-limit="${event.guestLimit}">
                                                <i class="fas fa-edit"></i> Edit
                                            </button>
                                            <form method="post" action="${pageContext.request.contextPath}/admin">
                                                <input type="hidden" name="event_id" value="${event.id}">
                                                <button type="submit" name="action" value="delete" class="btn btn-danger"
                                                        onclick="return confirm('Are you sure you want to delete this event?');">
                                                    <i class="fas fa-trash"></i> Delete
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty events}">
                                <tr>
                                    <td colspan="7" class="empty-state">
                                        <i class="fas fa-calendar-times"></i>
                                        No events found.
                                    </td>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </section>
        </section>

        <section class="panel" id="bookings" style="margin-top: 20px;">
            <div class="panel-header">
                <div>
                    <h2>User Booking Details</h2>
                    <p>Participant contact details, assigned events, and digital IDs.</p>
                </div>
                <span class="panel-badge">${totalBookings} Bookings</span>
            </div>

            <div class="table-wrap">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>User</th>
                            <th>Email</th>
                            <th>Event</th>
                            <th>Event Date</th>
                            <th>Digital ID</th>
                            <th>Booked On</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="booking" items="${bookings}">
                            <tr>
                                <td class="id-cell">#${booking.id}</td>
                                <td class="user-name">${booking.userName}</td>
                                <td>${booking.userEmail}</td>
                                <td>${booking.eventName}</td>
                                <td>${booking.eventDate}</td>
                                <td><span class="digital-chip">${booking.digitalId}</span></td>
                                <td>${booking.bookingDate}</td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty bookings}">
                            <tr>
                                <td colspan="7" class="empty-state">
                                    <i class="fas fa-user-clock"></i>
                                    No user bookings found.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelectorAll('.update-btn').forEach(button => {
                button.addEventListener('click', function() {
                    const eventData = {
                        id: this.dataset.id,
                        name: this.dataset.name,
                        date: this.dataset.date,
                        location: this.dataset.location,
                        description: this.dataset.description,
                        guestLimit: this.dataset.guestLimit
                    };

                    document.getElementById('formTitle').textContent = 'Update Event';
                    document.getElementById('formAction').value = 'update';
                    document.getElementById('eventId').value = eventData.id;
                    document.getElementById('name').value = eventData.name;
                    document.getElementById('date').value = eventData.date;
                    document.getElementById('location').value = eventData.location;
                    document.getElementById('description').value = eventData.description;
                    document.getElementById('guest_limit').value = eventData.guestLimit;
                    document.getElementById('submitBtn').innerHTML = '<i class="fas fa-save"></i> Update Event';
                    document.getElementById('cancelBtn').style.display = 'inline-flex';
                    document.getElementById('eventForm').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
            });
        });

        function resetForm() {
            document.getElementById('formTitle').textContent = 'Create Event';
            document.getElementById('formAction').value = 'add';
            document.getElementById('eventId').value = '';
            document.getElementById('eventForm').reset();
            document.getElementById('submitBtn').innerHTML = '<i class="fas fa-plus-circle"></i> Add Event';
            document.getElementById('cancelBtn').style.display = 'none';
        }
    </script>
</body>
</html>
