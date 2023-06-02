<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
    <?php
        $polaczenie=mysqli_connect("localhost","root","","ksiegarnia2");
        if ($polaczenie)
        {
        $zapytanie="select * from ksiazki";
         $wynik=mysqli_query($polaczenie,$zapytanie);
         echo "<ol>";
        while($wiersz=mysqli_fetch_array($wynik)){
            echo "<li>".$wiersz ["tytul"]."</li>";
         } 
         echo "</ol>";
        }
        ?>
    </div>
</body>
</html>