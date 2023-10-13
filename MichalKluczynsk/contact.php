<!-- contact.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Kontakt</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.php">Strona główna</a></li>
                <li><a href="about-us.php">O nas</a></li>
                <li><a href="contact.php">Kontakt</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h1>Kontakt</h1>
        <form id="contact-form" action="#" method="post">
            <!-- Twój formularz kontaktowy tutaj -->
        </form>
    </main>
    
    <p>Skontaktuj się z nami, wpisując wiadomość poniżej i klikając "Wyślij".</p>

    <form action="process_contact.php" method="post">
        
        <textarea id="message" name="message" rows="4" cols="50" required></textarea>

        <br>

        <input type="submit" value="Wyślij">
    </form>
    


    <script>
        document.getElementById('contact-form').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Nie można wysłać formularza');
        });
    </script>
</body>
</html>