<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <?php
    include './header.php';
    ?>
    <div class="content-text">
        <div class="contactform">
            <form action="./submit.php" method="POST" class="contact-form" id="contact-form">
                <h1>Formularz kontaktowy</h1>
                <div class="test">
                    <label for="Imie">Imię</label>
                    <input type="text" id="Imie" name="Imie" placeholder="Imię" required>
                </div>
                <div class="test">
                    <label for="Nazwisko">Nazwisko</label>
                    <input type="text" id="Nazwisko" name="Nazwisko" placeholder="Nazwisko" required>
                </div>
                <div class="test">
                    <label for="Email">E-mail</label>
                    <input type="text" id="Email" name="Email" placeholder="E-mail" required>
                </div>
                <div class="test">
                    <label for="desc">Opis</label>
                    <input type="text" id="desc" name="desc" placeholder="Opis" class="desc" required>
                </div>
                <div class="button">
                    <input type="submit" id="btn" class="btn">
                </div>
            </form>
        </div>
    </div>
    <img src="../png/winiarnia.jpg" alt="Winiarnia" style="width:100%; height:140vh; position:relative; z-index:1; transform:translateY(-40%);">
    <?php
        include './footer.php';
    ?>
</body>
<script src="./contact-form.js"></script>
</html>
