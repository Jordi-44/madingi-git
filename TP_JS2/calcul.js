function addition(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b)
    
    t3.value = c;
}

function Soustaction(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b)
   
    t3.value = c;
}

function division(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b)
    
    t3.value = c;
}

function multiplication(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b)
    
    t3.value = c;
}

function parite(){
    var v3 = ""
    a = document.getElementById("t1").value;
    if(v%2==0)
        t4.value = ("pair")
    else
        t4.value = ("impair")
}
