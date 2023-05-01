if('serviceWorker' in navigator)
{
    navigator.serviceWorker.register('./worker.js').then((reg)=>{
        console.log("Service Worker Installed")
    }).catch((err)=>{
        console.log(err)
    })
}

document.getElementById("btn").addEventListener('click',function(){
    document.getElementById("photo").style.display="block";
    document.getElementById("btn").setAttribute("disabled","true");
})