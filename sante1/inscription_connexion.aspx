<%@Page Language="C#"%>
<%@Import Namespace="System.Collections.Generic"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
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
	</head>
	<body>

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
		<div class="form">
			<!--login form start-->
			<form class="login-form" action="" method="post">
				<i class="fas fa-user-circle" style="color:green;"></i>
				<input class="user-input"  type="text" name="eMail" placeholder="Pseudo" required >
				<input class="user-input" type="password" name="emdp" placeholder="Mot de passe" required>
				<div class="options-01">
					<label class="remember-me"><input type="checkbox" name="">Souviens de moi</label>
					<a href="#">Mot de passe oublier?</a>
				</div>
			<input class="btn" type="submit" name="seconnecter1" value="Login">
				<div class="options-02">
					<p>Vous etes pas inscrit ? <a href="#">Créer un compte</a></p>
				</div>
			</form>
			<!--login form end-->


			 <%
      
		sante1.Bdd uneBDD = new sante1.Bdd ("localhost","priserdv", "root","") ; //pas de mdp pour les PC 
        
        //instanciation d'une intervention de modification 
        %>
			<!--signup form start-->
			<form class="signup-form" action="" method="post">
				<i class="fas fa-user-plus"style="color:green;"></i>
				<input class="user-input" type="text" name="Nom" placeholder="Nom" id="nom" required  onblur="traiterNom()">
				<input class="user-input" type="text" name="Prenom" placeholder="Prenom" id="Prenom"  required onblur="traiterPrenom()" >
				<input class="user-input" type="text" name="Mail" placeholder="Email" required id="email" required onblur="validate()">
				<span id="msge"></span> 
				<input class="user-input" type="text" name="Adress" placeholder="Adress" required id="adress" required onblur="">
				<input class="user-input" type="text" name="Ville" placeholder="Ville" required id="ville" required onblur="">
				<input class="user-input" type="text" name="Tel" placeholder="Tel" id="telephone" required onblur="traiterNumero()" >
				<input class="user-input" type="text" name="DateEmbauche" placeholder="DateEmbauche" required id="dateEmbauche" required onblur="">
				<input class="user-input" type="password" name="mdp" id="mdp" placeholder="Mot de passe"  required onblur="checkmdp()" >
				<span id="msg"></span> 
				<input class="btn" type="submit" name="valider1" value="S'inscrire">
				<div class="options-02">
					<p>Vous etes deja inscrit ? <a href="#">Connectez-vous</a></p>
				</div>
			</form>
			<!--signup form end-->
		</div>
		<!--form area end-->

	
		<% 
	
            if(Request.Form["valider1"] != null )
            {
                string Nom = Request.Form["Nom"]; 
                string Prenom = Request.Form["Prenom"]; 
                string Mail = Request.Form["Mail"]; 
                string Adress = Request.Form["Adress"]; 
                string Ville = Request.Form["Ville"];
                string Tel = Request.Form["Tel"];
				string DateEmbauche = Request.Form["DateEmbauche"];
				string mdp = Request.Form["mdp"];

	

                //instanciation de la classe intervention 
                sante1.Personel unPersonel = new sante1.Personel(Nom, Prenom, Mail,Adress, Ville, Tel,DateEmbauche,mdp); 
                
                //insertion dans la base de données de l'intervention saisie 
                uneBDD.insertPersonel(unPersonel); 

            }%>

		<!--debut footer-->
     <footer>
      <div class="main-content">
        <div class="left box">
          <h2>A Propos</h2>
          <div class="content">
            <p>Santé avant tout est un centre medical en pleins centre de paris.</p>
            <div class="social">
              <a href="#"><span class="fab fa-facebook-f"></span></a>
              <a href="#"><span class="fab fa-twitter"></span></a>
              <a href="#"><span class="fab fa-instagram"></span></a>
              <a href="#"><span class="fab fa-youtube"></span></a>
            </div>
          </div>
        </div>

        <div class="center box">
          <h2>Addresse</h2>
          <div class="content">
            <div class="place">
              <span class="fas fa-map-marker-alt"></span>
              <span class="text">Paris, France</span>
            </div>
            <div class="phone">
              <span class="fas fa-phone-alt"></span>
              <span class="text">07 58 820875</span>
            </div>
            <div class="email">
              <span class="fas fa-envelope"></span>
              <span class="text">santéavanttout@gmail.com</span>
            </div>
          </div>
        </div>

        <div class="right box">
          <h2>Contactez nous</h2>
          <div class="content">
            <form action="#">
              <div class="email">
                <div class="text">Email *</div>
                <input type="email" required>
              </div>
              <div class="msg">
                <div class="text">Message *</div>
                <textarea rows="2" cols="25" required></textarea>
              </div>
              <div class="btn">
                <button type="submit">Envoyer</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="bottom">
        <center>
          <span class="credit">créer par  <a href="Jemaya.com">Jemaya.com</a> | </span>
          <span class="far fa-copyright"></span><span> 2020 tous drois reservés.</span>
        </center>
      </div>
    </footer>
    <!--fin footer-->


		<script type="text/javascript">
		$('.options-02 a').click(function(){
			$('form').animate({
				height: "toggle", opacity: "toggle"
			}, "slow");
		});
		
		
        </script>
		
	  
 
	</body>
</html>
