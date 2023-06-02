<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polaczenie z baza</title>
</head>
<body>
    <header><h1> Połączenie z bazą </h1></header>
    <main>
        <h2>Ustanowienie polaczenia</h2>
        <p>$polaczenie=mysqli_connect("adres bazy","uzytkownik","haslo","nazwa bazy")</p>
        <h2>Sprawdzenie czy podłączyliśmy sie do bazy</h2>
        <p>if(!$polaczenie){}</p>
        <h2>Wykonanie zapytania</h2>
        <p>$zmienna=mysqli_query($polaczenie,"zapytanie SQL")</p>
        <h2>Wyświatlanie wyniku na sronie</h2>
        <p>while($wiersz=mysqli_ferch_array($zmienna)) <br>
        {   <br>
            echo $wiersz["nazwa kolumny"]." ".%row["nazwa kolumny drugiej"];<br>
        }
        </p>
        <h2> Zamknięcie połączenia z bazą danych</h2>
        <p>mysqli_close($polaczenie)</p>
        <div>
            <h2>Testowe polaczenie z bazą dancyh</h2>
            <?php
            $polaczenie=mysqli_connect("localhost","root","","ksiegarnia");
            if ($polaczenie)
            {
            echo "Połączyłes się<br><br>";
            $zapytanie="select * from klient";
             $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                echo $wiersz ["imie"]." ".$wiersz["nazwisko"]."<br>";
             } 
             echo "<br>";
            $zapytanie="select tytul, wydawnictwo, rok_wydania from ksiazki order by cena limit 2";  
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                echo $wiersz ["tytul"]." ".$wiersz["wydawnictwo"]." ".$wiersz["rok_wydania"]."<br>"; 
             }
             echo "<br>";
            $zapytanie="select count(*) as 'ilosc' from klient";  
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                echo $wiersz ["ilosc"]."<br>";
             }
             echo "<br>";
            $zapytanie="select count(zamowienie) from zamowienia where data_zlozenia_zamowienie between 1 31.8.2019";  
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                echo $wiersz ["zamowienie"]."<br>";
             }
             echo "<br>";
            $zapytanie="select count(tytul) as 'ilosc' from ksiazki";  
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                echo $wiersz ["ilosc"]."<br>";
             }
             echo "<br>";
            $zapytanie="select * from ksiazki";  
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                echo $wiersz ["tytul"]."<br>";
             }
            }
            else{
                exit("Błąd połączenia");
            }
            ?>
        </div>
    </main>
    <footer>
        <p>Strone przygotował Kamil</p>
    </footer>
</body>
</html>