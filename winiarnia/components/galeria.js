(()=>{
    const obraz = document.getElementById("NaszaWinnica");
    obraz.addEventListener('click',(e)=>{
        window.document.location.assign('./galeria-winnica.php');
    })
    const obraz2 = document.getElementById("Wydarzenia");
    obraz2.addEventListener('click',(e)=>{
        window.document.location.assign('./galeria-wydarzenia.php');
    })
})()