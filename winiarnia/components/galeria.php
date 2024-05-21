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
    <div class="content-text-5">
        <h1>GALERIA</h1>
        <div class="galeria-row">
            <div class="big-container-galeria">
                <div class="galeria-container" id="NaszaWinnica">
                    <img src="../png/winiarnia.jpg" alt="">
                </div>
                <h1>NASZA WINNICA</h1>
            </div>
            <div class="big-container-galeria">
                <div class="galeria-container" id="Wydarzenia">
                    <img src="../png/winiarnia.jpg" alt="">
                </div>
                <h1>WYDARZENIA</h1>
            </div>
        </div>        
    </div>
    <img src="../png/winiarnia.jpg" alt="Winiarnia" style="width:100%; height:100vh; position:relative; z-index:1;">
    <?php
        include './footer.php';
    ?>
</body>
<script src="./galeria.js"></script>
</html>
