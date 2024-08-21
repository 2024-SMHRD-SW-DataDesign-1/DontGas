let isDark = false;

function toggleDarkMode() {
    const image = document.getElementById('modbtn');
    const existingLink = document.getElementById('theme-style');
    const head = document.head;

    if (isDark) {
        existingLink.href = 'css/lightstyles.css';
        image.src = '../dist/assets/img/illustrations/illust_source/darkpig.png';
    } else {
        existingLink.href = 'css/darkstyles.css';
        image.src = '../dist/assets/img/illustrations/illust_source/lightpig.png';
    }

    isDark = !isDark;
}