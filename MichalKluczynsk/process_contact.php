<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["message"])) {
        $message = $_POST["message"];        
        echo "<script>alert('Nie można wysłać formularza');</script>";
    }
}
?>