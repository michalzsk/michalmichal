(() => {
    const form = document.getElementById('contact-form');
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    form.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = form.querySelector('#Email');
        const emailValue = email.value;
        if (!emailRegex.test(emailValue)) {
            alert('Podaj poprawny email');
        } else {
            form.submit();
        }
    });
})();