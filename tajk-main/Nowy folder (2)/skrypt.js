function obliczSilnia(){
    let n=document.getElementById("liczbaN").value;
    let i=1;
    let silnia=1;
    while(i!=n){
        i=i+1;
        silnia=silnia*i;
    }
    document.getElementById("wynik").value=silnia;
}

function silnia(n){
    let wynik=1;
    if(n!=1){
        wynik=silnia(n-1)*n;
    }
     return wynik;
}

function obliczSilnieRekurencyjnie(){
    let n=document.getElementById("liczbaN").value;
    let wynik=1;
    if(n==1){
        document.getElementById("wynikRekurencja").value=wynik+1;
    }else{
        wynik=silnia(n-1)*n;
        document.getElementById("wynikRekurencja").value=wynik+1;
    }
}