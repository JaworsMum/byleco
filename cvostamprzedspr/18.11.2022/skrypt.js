function oblicz(){
    let kwota=document.getElementById("kwota").value;
    let waluta=document.getElementById("waluta").value;
    let tranzakcja=document.getElementById("tranzakcja").value;
    let wynik=0;
    if(tranzakcja=="kupno"){
        if(waluta=="euro"){
            wynik=kwota*4.691;
        }else if(waluta=="funt"){
            wynik=kwota*5.383;
        }else{
            wynik=kwota*4,52;
        }
    }else{
        if(waluta=="euro"){
            wynik=kwota*4.72;
        }else if(waluta=="funt"){
            wynik=kwota*5.423;
        }else{
            wynik=kwota*4,541;
        }
    }
    document.getElementById("wynik").value=wynik;
}
function oblicz2(){
    let kwota=document.getElementById("kwota").value;
    let waluta=document.getElementById("waluta").value;
    let tranzakcja=document.getElementById("tranzakcja").value;
    let wynik=0;
}