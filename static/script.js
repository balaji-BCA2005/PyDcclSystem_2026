const toggleBtn = document.getElementById('theme-toggle');
const currentTheme = localStorage.getItem('theme');

// Check saved theme
if (currentTheme) {
    document.documentElement.setAttribute('data-theme', currentTheme);
    if (currentTheme === 'dark') {
        toggleBtn.classList.replace('fa-moon', 'fa-sun');
    }
}

toggleBtn.addEventListener('click', () => {
    let theme = document.documentElement.getAttribute('data-theme');
    if (theme === 'dark') {
        document.documentElement.setAttribute('data-theme', 'light');
        localStorage.setItem('theme', 'light');
        toggleBtn.classList.replace('fa-sun', 'fa-moon');
    } else {
        document.documentElement.setAttribute('data-theme', 'dark');
        localStorage.setItem('theme', 'dark');
        toggleBtn.classList.replace('fa-moon', 'fa-sun');
    }
});
