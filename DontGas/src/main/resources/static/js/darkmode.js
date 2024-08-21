let isDark = false;

function toggleDarkMode() {
    const image = document.getElementById('modbtn');
    const existingLink = document.getElementById('theme-style');

    if (isDark) {
        existingLink.href = 'css/lightstyles.css';
        image.src = image.getAttribute('data-dark-src');
    } else {
        existingLink.href = 'css/darkstyles.css';
        image.src = image.getAttribute('data-light-src');
    }

    isDark = !isDark;
}