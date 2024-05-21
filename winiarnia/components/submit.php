<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $imie = htmlspecialchars($_POST['Imie']);
    $nazwisko = htmlspecialchars($_POST['Nazwisko']);
    $email = htmlspecialchars($_POST['Email']);
    $desc = htmlspecialchars($_POST['desc']);

    $to = 'test@gmail.com';
    $subject = 'Formularz kontaktowy';
    $message = "Imię: $imie\nNazwisko: $nazwisko\nEmail: $email\nOpis: $desc";
    $headers = "From: webmaster@example.com" . "\r\n" .
               "Reply-To: $email" . "\r\n" .
               "X-Mailer: PHP/" . phpversion();

    if (mail($to, $subject, $message, $headers)) {
        header('Location: ./main.php');
    } else {
        console.log('Nie udało się wysłać maila.');
    }
} else {
    echo 'Coś poszło nie tak :/';
}
?>
