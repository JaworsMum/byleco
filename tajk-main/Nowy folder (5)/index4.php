<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post" action="#">
        <label for="imie">Podaj imie</label>
        <input type="text" name="imie" id="imie">
        <br>
        <label for="nazwisko">Podaj nazwisko</label>
        <input type="text" name="nazwisko" id="nazwisko">
        <br>
        <label for="pesel">Podaj pesel</label>
        <input type="text" name="pesel" id="pesel">
        <br>
        <label for="kod">Podaj kod pocztowy</label>
        <input type="text" name="kod" id="kod">
        <br>
        <label for="miejscowosc">Podaj miejscowosc</label>
        <input type="text" name="miejscowosc" id="miejscowosc">
        <br>
        <label for="ulica">Podaj ulice</label>
        <input type="text" name="ulica" id="ulica">
        <br>
        <label for="tel">Podaj nr telefonu</label>
        <input type="text" name="tel" id="tel">
        <br>
        <input type="submit" value="zapisz">
    </form>
    <?php
    $polaczenie=mysqli_connect("localhost","root","","4tie");
            if($_SERVER["REQUEST_METHOD"]=="POST"){
                if($polaczenie){
                    $imie=$_POST["imie"];
                    $nazwisko=$_POST["nazwisko"];
                    $pesel=$_POST["pesel"];
                    $kod=$_POST["kod"];
                    $miejscowosc=$_POST["miejscowosc"];
                    $ulica=$_POST["ulica"];
                    $tel=$_POST["tel"];
                    if(empty($_POST['imie']) || empty($_POST['nazwisko']) || empty($_POST['pesel'])){
                        echo "<p>Wypełnij wszystkie dane!<p>";}
                    else{
                    $zapytanie="insert into dane values(null,'$imie','$nazwisko','$pesel','$kod','$miejscowosc','$ulica','$tel')";
                    if(mysqli_query($polaczenie,$zapytanie)){
                        echo "Dodano do bazy";
                    }
                    else{
                        echo "Błąd";
                    }
                }
            }
            }
    ?>
</body>
</html>