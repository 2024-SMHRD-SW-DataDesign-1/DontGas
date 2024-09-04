let isDark = getCookie('darkMode') === 'true'; // 쿠키에서 상태를 가져옴

        function setCookie(name, value, days) {
            const d = new Date();
            d.setTime(d.getTime() + (days * 24 * 60 * 60 * 1000));
            let expires = "expires=" + d.toUTCString();
            document.cookie = name + "=" + (value || "") + ";" + expires + ";path=/";
        }

        function getCookie(name) {
            let nameEQ = name + "=";
            let ca = document.cookie.split(';');
            for (let i = 0; i < ca.length; i++) {
                let c = ca[i];
                while (c.charAt(0) === ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }

        function toggleDarkMode() {
            const image = document.getElementById('modbtn');
            const existingLink = document.getElementById('theme-style');
            
            if (!image || !existingLink) {
                console.error('Required elements are missing');
                return;
            }
            
            if (isDark) {
                existingLink.href = '/css/lightstyles.css';
                image.src = image.getAttribute('data-dark-src');
            } else {
                existingLink.href = '/css/darkstyles.css';
                image.src = image.getAttribute('data-light-src');
            }

            isDark = !isDark;
            setCookie('darkMode', isDark, 7); // 상태를 쿠키에 저장 (7일 동안 유지)
        }

        // 페이지 로드 시 상태 적용
        window.onload = function() {
            const image = document.getElementById('modbtn');
            const existingLink = document.getElementById('theme-style');

            if (!image || !existingLink) {
                console.error('Required elements are missing');
                return;
            }

            if (isDark) {
                existingLink.href = '/css/darkstyles.css';
                image.src = image.getAttribute('data-light-src');
            } else {
                existingLink.href = '/css/lightstyles.css';
                image.src = image.getAttribute('data-dark-src');
            }
        }