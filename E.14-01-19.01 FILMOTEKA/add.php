<?php 
		$tytul=$_POST['tytul'];
		$gatunek = $_POST['gatunek'];
		$rok = $_POST['rok'];
		$ocena = $_POST['ocena'];

		$conn = mysqli_connect('localhost','root','','egzamin4') or die('błąd w połączeniu z bazą danych: dane');
		

		if(empty($tytul) || empty($gatunek) || empty($rok) || empty($ocena))
		{
			echo "Nie podano danych filmu!<br>";
		}
		else if (isset($tytul) || isset($gatunek) || isset($rok) || isset($ocena))
		{
			$sql = "INSERT INTO filmy (id, gatunki_id, tytul, rok, ocena ) VALUES (NULL,'5','Suburbicon','2017', '5') VALUES (NULL, '$gatunek', '$tytul', '$rok', '$ocena')";

			$result = mysqli_query($conn, $sql);
			echo "Film '.$result.' został dodany do bazy!' <br> ";
		}	
		mysqli_close($conn);
	?>


<!-- Jan Kupczyk -->