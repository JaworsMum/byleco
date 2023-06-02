function obliczKoszt(){

    let iloscPaliwa=parseInt(document.getElementById("liczbaPaliwa").value);
    let rodzaj=document.getElementById("rodzaj").value;
    let koszt;
    if(rodzaj=="banzyna"){
        koszt=iloscPaliwa*6.65;
    }else{
        koszt=iloscPaliwa*7.10;
    }
    document.getElementById("wynik").value=koszt+"zł";

}