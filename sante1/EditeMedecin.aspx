<%@ Page Language="C#"%>
<%@  Import Namespace="System.Collections.Generic" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>Login Page</title>
		<link rel="stylesheet" href="Style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="style_Menu.css">
	  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	  <script src="script.js"></script>
    <title>Edit Medecin</title>
</head>
<body>

    
			 <%

                 sante1.Bdd uneBDD = new sante1.Bdd ("localhost","priserdv", "root","") ; //pas de mdp pour les PC 
                    //instanciation d'une intervention de modification 
                 sante1.Medecin unMedecedin = null;
              
                    if (Request["action"] != null && Request["numpers"] != null && Request["action"] == "edit" ) 
        {
            int numpers = int.Parse (Request["numpers"]); 
            unMedecedin = uneBDD.selectWhereMedecins(numpers); 
        }
        %>
    

    	<!--Menu Principale-->
		    <nav>
		      <input type="checkbox" id="check">
		      <label for="check" class="checkbtn">
		        <i class="fas fa-bars"></i>
		      </label>
		      <label class="logo">SANTE AVANT TOUT</label>
		      <ul>
		        <li><a class="active" href="index.aspx">Home</a></li>
		        <li><a href="default.aspx">page principale</a></li>
		        <li><a href="#">Services</a></li>
		        <li><a href="#">Contact</a></li>
		      </ul>
		    </nav>
		<!--Fin Menu Principale-->
		<!--form area start-->
    <div class="form" style="width:30%;">


        <!--login form start-->
			<form class="login-form" action="" method="post">
			  <i class="fas fa-user-edit" style="color: green;"></i><br />
          NOM:  <input class="user-input" type="text" name="Nom"  id="nom" value="<%=(unMedecedin==null)?" ":unMedecedin.NOM %>" required onblur="traiterNom()"><br />
           Prenom: <input class="user-input" type="text" name="Prenom"  id="Prenom" value="<%=(unMedecedin==null)?" ":unMedecedin.PRENOM  %>" required onblur="traiterPrenom()"><br />
            Mail :<input class="user-input" type="text" name="Mail"  required id="email" value="<%=(unMedecedin==null)?" ":unMedecedin.MAIL  %>" required onblur="validate()"><br />
            <span id="msge"></span>
           Adresse : <input class="user-input" type="text" name="Adress"  required id="adress" value="<%=(unMedecedin==null)?" ":unMedecedin.ADRESSE  %>" required onblur=""><br />
           Ville <input class="user-input" type="text" name="Ville" required id="ville" value="<%=(unMedecedin==null)?" ":unMedecedin.VILLE  %>" required onblur=""><br />
           Telephone: <input class="user-input" type="text" name="Tel" id="telephone" value="<%=(unMedecedin==null)?" ":unMedecedin.TEL  %>" required onblur="traiterNumero()"><br />
            Date D'embauche<input class="user-input" type="text" name="DateEmbauche"  required id="dateEmbauche" value="<%=(unMedecedin==null)?" ":unMedecedin.DATEEMBAUCHE  %>" required onblur="" disabled><br />
            Mote de passe : <input class="user-input" type="text" name="mdp" id="mdp"  value="<%=(unMedecedin==null)?" ":unMedecedin.PASSWORD  %>" required onblur="checkmdp()">
            <span id="msg"></span>
				  <input class="btn" type="submit" name="Modifier" value="Modifier">
			</form>
            </div>
    
	
	    <% if (Request.Form["Modifier"] != null)
                    {
                        //mise à jour de l'intervention identifiée par id 
                        
                        string Nom = Request.Form["Nom"]; 
                        string Prenom = Request.Form["Prenom"]; 
                        string Mail = Request.Form["Mail"]; 
                        string Adress = Request.Form["Adress"]; 
                        string Ville = Request.Form["Ville"];
                        string Tel = Request.Form["Tel"];
                        string DateEmbauche = Request.Form["DateEmbauche"];
                        string mdp = Request.Form["mdp"];
                
                        //instanciation de la classe intervention 
                        sante1.Medecin unMedecin = new sante1.Medecin( Nom, Prenom, Mail, Adress, Ville, Tel,DateEmbauche,mdp); 
                        //mise à jour dans la base 
                        uneBDD.updateMedecin(unMedecin); 
                    } %>

</body>
</html>