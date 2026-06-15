const CONFIG = {
    // Default to localhost for local testing. In production, this can be dynamically overridden or hardcoded.
    API_BASE_URL: window.location.origin.includes('localhost') || window.location.origin.includes('127.0.0.1')
        ? 'http://localhost:8080'
        : 'https://sevent-ms.onrender.com' // Replace with your Render URL if needed
};
