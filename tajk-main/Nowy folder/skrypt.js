function oblicz(){
    let wyraz=parseInt(document.getElementById("wyraz").value);
    let wynik;
    wynik=hibonaczi(wyraz);
    document.getElementById("wynik").value=wynik;
}
function hibonaczi(nrWyrazu){
    let wynik=0;
    if(nrWyrazu<=2){
        wynik=1;
    }else{
        wynik=hibonaczi(nrWyrazu-1)+hibonaczi(nrWyrazu-2);
    }
    return wynik;
}