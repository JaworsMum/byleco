const formularz=document.querySelector("form");
const imie=formularz.querySelector("input[name=name]");
const email=formularz.querySelector("input[name=email]");

formularz.addEventListener("submit",e=>{
    e.preventDefault();

    if(imie.ariaValueMax.length<=3){
        alert("Chamie! wpisałeś za krótkie imię");
    }
})