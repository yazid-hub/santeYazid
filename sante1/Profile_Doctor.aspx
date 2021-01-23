<%@Page Language="C#"%>
<%@Import Namespace="System.Collections.Generic"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile Medecin</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="Style.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
	  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	  <script src="script.js"></script>
    
  </head>
  <body>

       <%
      
		sante1.Bdd uneBDD = new sante1.Bdd ("localhost","priserdv", "root","") ; //pas de mdp pour les PC 
        
        //instanciation d'une intervention de modification 
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
		        <li><a href="#">Déconnecter</a></li>
		      </ul>
		    </nav>
		<!--Fin Menu Principale-->

      
      
    <main>
      <section class="glass">
        <div class="dashboard">
          <div class="user">
            <img src="/img/88.jpg" alt="" />
            <h3><a href="#">Yazid NAIT ALLOU</a></h3>
            <p>MEDECIN GENIRALISTE</p>
          </div>
          <div class="links">
            <div class="link">
              <img src="./images/twitch.png" alt="" />
              <h2><a href="#">EMPLOIS DE TEMPS </a></h2>
            </div>
            <div class="link">
              <img src="./images/steam.png" alt="" />
              <h2><a href="#dispo">DISPONIBLITES</a></h2>
            </div>
            <div class="link">
              <img src="/img/99.jpg" alt="" />
              <h2><a href="#">FICHE DE PAYS</a></h2>
            </div>
            <div class="link">
              <img src="./images/library.png" alt="" />
              <h2><a href="#">Documents</a></h2>
            </div>
          </div>
        </div>
        <div class="sante">
          <div class="status">
            <h1 style="margin-top:-180px;">Tableau de bord</h1>
          </div>
         
          <div class="cardPrincipal">
            <div class="card1" id="dispo">

             
               <!--form area start-->
		<div class="form" style="margin-top:60px; width:50%;">
			<!--login form start-->
			<form class="login-form" action="" method="post">
               
				<i class="far fa-calendar-plus" style="color:green;"></i><br />
				Date :  <input class="user-input"  type="date" name="date" placeholder="date" required ><br />
				Heure début:<input class="user-input" type="time" name="heure" placeholder="heure" required><br />
				Heure Fin :<input class="user-input" type="time" name="heureFin" placeholder="heure" required>
			<input class="btn" type="submit" name="Ajouter" value="Ajouter">
				
			</form>

            </div>
			<!--login form end-->
        </div>
              </div>
      </section>
    </main>
      
 
		<% 
	
            if(Request.Form["Ajouter"] != null )
            {
                string date = Request.Form["date"]; 
                string heure = Request.Form["heure"]; 
                string heureFin = Request.Form["heureFin"]; 
            
                //instanciation de la classe intervention 
                sante1.Creneau unCreneau = new sante1.Creneau(date,heure, heureFin); 
                
                //insertion dans la base de données de l'intervention saisie 
                uneBDD.insertCreneu(unCreneau); 

            }%>

      <style>   
/* Style profile*/






main {
    font-family: "Poppins", sans-serif;
    min-height: 100vh;
 
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top :100px;
    }

.glass {
    background: white;
    min-height: 80vh;
    width: 100%;
    height:100%;
    background: linear-gradient( to right bottom, rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.3) );
    border-radius: 2rem;
    z-index: 2;
    backdrop-filter: blur(0.5rem);
    display: flex;
}




.dashboard {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-evenly;
    text-align: center;
    background: linear-gradient( to right bottom, rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.3) );
    border-radius: 2rem;
}

.link {
    display: flex;
    margin: 2rem 0rem;
    padding: 1rem 5rem;
    align-items: center;
}

    .link h2 {
        padding: 0rem 2rem;
    }

.sante {
    flex: 2;
}
a{
    color:green;
}

/* sante */
.status {
    margin-bottom: 3rem;
}

    .status input {
        background: linear-gradient( to right bottom, rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.3) );
        border: none;
        width: 50%;
        padding: 0.5rem;
        border-radius: 2rem;
    }

.sante {
    margin: 5rem;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
}

.card1 {
    display: flex;
    background: linear-gradient( to left top, rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0.5) );
    border-radius: 1rem;
    margin: 2rem 0rem;
    padding: 2rem;
    box-shadow: 6px 6px 20px rgba(122, 122, 122, 0.212);
    justify-content: space-between;
    height:750px;
    width:1200px;
}


</style>
  </body>
</html>
