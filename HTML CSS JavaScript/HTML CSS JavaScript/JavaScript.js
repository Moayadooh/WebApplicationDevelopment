function Greet() {
    msg = document.getElementById("txt1").value;
    alert(msg);
}

function ShowHide() {
    var status = document.getElementById("images").style.display;
    if (status == "none")
        status = "block";
    else
        status = "none";
    document.getElementById("images").style.display = status;
}

function ChangeTitle() {
    document.getElementById("title1").innerHTML = "Oman";
}
