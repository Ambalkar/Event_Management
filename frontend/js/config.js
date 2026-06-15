const CONFIG = {
    API_BASE_URL: window.location.protocol === 'file:'
        ? 'http://localhost:8081'
        : window.location.origin
};
