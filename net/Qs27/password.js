document.getElementById("oldpass").addEventListener('input', function() {
    var pass = document.getElementById("oldpass").value;
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("verifyPassword").innerHTML = this.responseText;
        }
    };
    xhttp.open("POST", "verify.jsp", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send('oldpass=' + pass);
}); 

document.getElementById("submitquery").addEventListener('click',function(){
    e.preventDefault();
    var npass=document.getElementById("newpass").value;
    var rpass=document.getElementById("retype").value;

    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange = function(){
        if(this.readyState === 4 && this.status===200){
            document.getElementById("result").innerHTML = this.responseText;
        }
    };
    xhttp.open("POST","change.jsp",true);
    xhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xhttp.send("newpass="+npass+"&retype="+rpass);
}); 