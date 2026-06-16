// Intercept fetch requests globally to inject Bearer token automatically
(function() {
    const originalFetch = window.fetch;
    window.fetch = async function(resource, init) {
        const token = localStorage.getItem("token");
        if (token) {
            init = init || {};
            init.credentials = 'include';
            init.headers = init.headers || {};
            if (init.headers instanceof Headers) {
                if (!init.headers.has('Authorization')) {
                    init.headers.set('Authorization', 'Bearer ' + token);
                }
            } else {
                if (!init.headers['Authorization'] && !init.headers['authorization']) {
                    init.headers['Authorization'] = 'Bearer ' + token;
                }
            }
        }
        return originalFetch(resource, init);
    };
})();

// Start performance tracking
console.time("Navbar Initial Render");
console.time("Navbar Verified Render");
const initStartTime = performance.now();

let authPromise = null;

async function checkAuth() {
    // 1. Instant Cache-First Render
    let initialUser = { authenticated: false };
    if (localStorage.getItem("token")) {
        try {
            const cachedUserStr = localStorage.getItem("user");
            if (cachedUserStr) {
                initialUser = JSON.parse(cachedUserStr);
                console.log("[Performance Audit] Loaded cached user session instantly:", initialUser);
            }
        } catch (e) {
            console.warn("[Performance Audit] Failed to parse cached user:", e);
        }
    }
    
    // Render immediately from cache/fallback
    renderNavbar(initialUser);
    const initEndTime = performance.now();
    console.timeEnd("Navbar Initial Render");
    console.log(`[Performance Audit] Navbar rendered instantly in ${(initEndTime - initStartTime).toFixed(2)}ms.`);

    if (authPromise) return authPromise;

    // 2. Async Background Network Verification
    authPromise = (async () => {
        const netStartTime = performance.now();
        try {
            const url = CONFIG.API_BASE_URL + '/api/auth/me';
            const res = await fetch(url, { credentials: 'include' });
            if (!res.ok) {
                throw new Error("HTTP " + res.status);
            }
            const data = await res.json();
            
            // Sync status to cache
            if (data.authenticated) {
                localStorage.setItem("user", JSON.stringify({ 
                    name: data.name, 
                    email: data.email, 
                    role: data.role, 
                    authenticated: true 
                }));
            } else {
                localStorage.removeItem("user");
                localStorage.removeItem("token");
            }
            
            renderNavbar(data);
            const netEndTime = performance.now();
            console.timeEnd("Navbar Verified Render");
            console.log(`[Performance Audit] Network verification completed in ${(netEndTime - netStartTime).toFixed(2)}ms (Server Roundtrip).`);
            return data;
        } catch (err) {
            console.warn('[Performance Audit] Network verification failed, keeping cached view:', err);
            const fallback = initialUser;
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
                await fetch(url, { 
                    method: 'POST',
                    credentials: 'include'
                });
                localStorage.removeItem("token");
                localStorage.removeItem("user");
                authPromise = null;
                window.location.href = 'index.html';
            } catch (err) {
                console.error('Logout error:', err);
            }
        });
    }
}

// Perform instant rendering immediately as script runs (no DOMContentLoaded blocking)
checkAuth();

// Setup UI toggle event listeners once DOM is ready
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
});

