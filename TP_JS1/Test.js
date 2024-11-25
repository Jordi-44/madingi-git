function test_age(){
    let age = prompt("Quelle est votre age ? ");
    if (age<18)
    {
        document.write(" Attention accès refusé, vous êtes mineur");
        document.body.style.backgroundColor ="red"
    }
    
    else
    {
            document.write("Ok, vous êtes Majeur");
        document.body.style.backgroundColor ="green"
    }
}

function affichage(){

    let prénom = prompt("saisir votre prénom");
    let nom = prompt("saisir votre nom");
    document.write ('<div style="border:3px solid purple; width:400px;  height:300px; margin:auto; padding:auto; color: pink; fontsize:2em; ">');
    document.write ("bonjour   " + prénom+ "  " + nom);
    document.write ("</div>");
}
 
function test_couleur(){
      
    let couleur = prompt("Donner une couleur");
    if ( couleur == "rouge") {
        document.body.style.backgroundColor = "red"

    }

    else if (couleur == "bleu"){
         document.body.style.backgroundColor = "blue"
    }


    else if (couleur == "vert"){
        document.body.style.backgroundColor = "green"
   }

   else 
   document.write ("Couleur non compris");
}


function calcul_moyenne() {

    var n1 = prompt("Donner la première note  :");
    var n2 = prompt("Donner la deuxième note  :");
    var n3 = prompt("Donner la troisième note  :");

    var somme= Number (n1) + Number (n2) + Number (n3)

    document.write("Voici la moyenne : " + somme + "</br>" );
    var moyenne = somme/3;

    document.write("Voici la moyenne : " + moyenne + "<br>");

    if (moyenne<10)
        {
            document.write("Non Admis.");
            document.body.style.backgroundColor ="red"
        }
        
        else
        {
                document.write("Admis.");
            document.body.style.backgroundColor ="green"
        }
  

        }

