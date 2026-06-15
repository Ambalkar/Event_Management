const CONFIG = {
    API_BASE_URL: window.location.origin.includes('localhost') || window.location.origin.includes('127.0.0.1') || window.location.protocol === 'file:'
        ? 'http://localhost:8081'
        : 'https://event-management-r5ll.onrender.com' // Replace with your Render URL if needed
};
