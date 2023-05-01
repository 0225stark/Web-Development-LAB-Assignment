document.getElementById("box").addEventListener("click", function(){
    var login = document.getElementById("login").value;
    var pass = document.getElementById("pass").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("result").innerHTML = this.responseText;
        }
    };
    xhttp.open("POST", "login.jsp", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send('login=' + login + 'pass=' + pass);
});


 