let authPromise = null;

async function checkAuth() {
    if (authPromise) return authPromise;

    authPromise = (async () => {
        try {
            const url = CONFIG.API_BASE_URL + '/api/auth/me';
            const headers = {};
            console.log("REQUEST URL =", url);
            console.log("AUTH HEADER =", headers.Authorization);
            console.log("REQUEST HEADERS =", headers);
            
            const res = await fetch(url, { credentials: 'include' });
            console.log("RESPONSE STATUS =", res.status);
            
            const resClone = res.clone();
            try {
                const bodyText = await resClone.text();
                console.log("RESPONSE BODY =", bodyText);
            } catch (e) {
                console.log("RESPONSE BODY = (failed to read body text)", e);
            }
            
            const data = await res.json();
            renderNavbar(data);
            return data;
        } catch (err) {
            console.error('Error checking auth:', err);
            const fallback = { authenticated: false };
            renderNavbar(fallback);
            return fallback;
        }
    })();

    return authPromise;
}

function renderNavbar(user) {
    const navLinks = document.getElementById('navLinks');
    if (!navLinks) return;

    // Determine active page
    const currentPage = window.location.pathname.split('/').pop() || 'index.html';

    const getActiveClass = (page) => currentPage === page ? 'active' : '';

    let html = `
        <a href="index.html" class="nav-link ${getActiveClass('index.html')}">
            <i class="fas fa-home"></i> Home
        </a>
        <a href="events.html" class="nav-link ${getActiveClass('events.html')}">
            <i class="fas fa-calendar-alt"></i> Browse Events
        </a>
        <a href="my-events.html" class="nav-link ${getActiveClass('my-events.html')}">
            <i class="fas fa-ticket-alt"></i> My Events
        </a>
    `;

    if (user.authenticated) {
        if (user.role === 'ADMIN') {
            html += `
                <a href="admin.html" class="nav-link ${getActiveClass('admin.html')}">
                    <i class="fas fa-user-shield"></i> Admin
                </a>
            `;
        }
        html += `
            <a href="#" id="logoutBtn" class="nav-link">
                <i class="fas fa-sign-out-alt"></i> Logout (${user.name})
            </a>
        `;
    } else {
        html += `
            <a href="login.html" class="nav-link ${getActiveClass('login.html')}">
                <i class="fas fa-sign-in-alt"></i> Sign In
            </a>
        `;
    }

    navLinks.innerHTML = html;

    // Attach logout event
    const logoutBtn = document.getElementById('logoutBtn');
    if (logoutBtn) {
        logoutBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            console.trace("LOGOUT CALLED");
            try {
                const url = CONFIG.API_BASE_URL + '/api/auth/logout';
                const headers = {};
                console.log("REQUEST URL =", url);
                console.log("AUTH HEADER =", headers.Authorization);
                console.log("REQUEST HEADERS =", headers);
                
                const res = await fetch(url, { 
                    method: 'POST',
                    credentials: 'include'
                });
                console.log("RESPONSE STATUS =", res.status);
                
                const resClone = res.clone();
                try {
                    const bodyText = await resClone.text();
                    console.log("RESPONSE BODY =", bodyText);
                } catch (e) {
                    console.log("RESPONSE BODY = (failed to read body text)", e);
                }
                
                authPromise = null; // Clear cached auth promise on logout
                window.location.href = 'index.html';
            } catch (err) {
                console.error('Logout error:', err);
            }
        });
    }
}

// Mobile toggle setup
document.addEventListener('DOMContentLoaded', () => {
    const navToggle = document.getElementById('navToggle');
    const navLinks = document.getElementById('navLinks');
    if (navToggle && navLinks) {
        navToggle.addEventListener('click', () => {
            navLinks.classList.toggle('active');
            const expanded = navToggle.getAttribute('aria-expanded') === 'true' || false;
            navToggle.setAttribute('aria-expanded', !expanded);
        });
    }
    checkAuth();
});
