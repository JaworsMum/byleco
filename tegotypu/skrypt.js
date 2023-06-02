function obliczDzielenie3(){
    var a=document.getElementById("dziel3").value;
    let sumaCyfr=0;
    let wynik="Nie jest podzielna przez 3";
    while(a>=1){
        sumaCyfr=sumaCyfr+a%10;
        a=Math.floor(a/10);
    }
    if(sumaCyfr%3==0){
        wynik="Jest podzielna przez 3!!!!!!!"
    }
    document.getElementById("wynik").value=wynik;
}
function czyPodzielnaPrzez3(){
    let wynik="NIE";
    let sumaCyfr=0;
    while(a>=1)
}