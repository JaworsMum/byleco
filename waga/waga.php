<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twój wskaźnik BMI</title>
    <link rel="stylesheet" href="styl4.css">
</head>
<body>
    <?php
        $polaczenie=mysqli_connect('localhost','root','','egzamin');
        $zapytanie="SELECT * FROM bmi";
        $wynik=mysqli_query($polaczenie,$zapytanie);
        while($wiersz=mysqli_fetch_array($wynik)){
            $lp[]=$wiersz['id'];
            $interpretacja[]=$wiersz['informacja'];
            $min[]=$wiersz['wart_min'];
        }
        $komunikat="";
        $informacja="";
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            if(empty($_POST['waga']) || empty($_POST['wzrost'])){
                
            }else{
                $waga=$_POST['waga'];
                $wzrost=$_POST['wzrost'];
                $wzrost1=$wzrost*$wzrost;
                $wynik=$waga/$wzrost1;
                $BMI=$wynik*10000;
                $data=date("Y-m-d"); 
                if($BMI<18){
                    $informacja="1";
                }else if($BMI>=19 && $BMI<=25){
                    $informacja="2";
                }else if($BMI>=26 && $BMI<=30){
                    $informacja="3";
                }else if($BMI>=31 && $BMI<=100){
                    $informacja="4";
                }
                    $komunikat="Twoja waga:$waga; Twój wzrost:$wzrost <br> BMI wynosi:$BMI";
                    $insert="INSERT INTO wynik VALUES(null,'$informacja','$data','$BMI')";
                    if(mysqli_query($polaczenie,$insert)){

                    }
                        
            }
        }
        mysqli_close($polaczenie);
    ?>
    <section class="baner">
        <h2>Oblicz wskaźnik BMI</h2>
    </section>
    <section class="logo">
        <img src="wzor.png" alt="Liczmy BMI">
    </section>
    <section class="lewy">
        <img src="rys1.png" alt="zrzuć kalorie!">
    </section>
    <section class="prawy">
        <h1>Podaj dane</h1>
        <form method="post">
            <label for="waga">Waga</label>
            <input type="number" name="waga" id="waga"><br>
            <label for="wzrost">Wzrost [cm]:</label>
            <input type="number" name="wzrost" id="wzrost"><br>
            <input type="submit" value=" Licz BMI i zapisz wynik">
        </form>
    <?php
        echo $komunikat;
    ?>
    </section>
    <section class="main">
        <table>
            <thead>
                <tr>
                    <th>Lp.</th>
                    <th>Interpretacja</th>
                    <th>zaczyna się od...</th>
                </tr>
            </thead>
            <tbody>
                
                    <?php
                    for ($x=0;$x<count($lp);$x++){
                        echo "<tr><td>$lp[$x]</td><td>$interpretacja[$x]</td><td>$min[$x]</td></tr>";
                    }
                    ?>
            </tbody>
        </table>
    </section>
    <section class="stopka">
        Autor ############
        <a href="kw2.png" target="_blank">Wynik działania kwerendy 2</a>
    </section>
    
</body>
</html>