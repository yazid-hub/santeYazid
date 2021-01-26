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
         <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/aos.css">
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
           sante1.Medecin unMedecin = null;

            if (Request["action"] != null && Request["numpers"] != null) 
           {
                string action = Request["action"];
               int numpers = int.Parse(Request["numpers"]);
               unMedecin = uneBDD.selectWhereMedecins(numpers);
           }

              sante1.Service unService = null;

            if (Request["action"] != null && Request["numpers"] != null) 
           {
                string action = Request["action"];
               int numpers = int.Parse(Request["numpers"]);
               unService = uneBDD.selectWhereService(numpers);
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
		        <li><a href="#">Déconnecter</a></li>
		      </ul>
		    </nav>
		<!--Fin Menu Principale-->

     
      


      <div class="dashboard" id="fix">
          <div class="user">
            <img src="/img/88.jpg" alt="" />
            <h3><a href="EditeMedecin.aspx"><%=(unMedecin==null)?" ":unMedecin.NOM +" "+unMedecin.PRENOM %></a></h3>
            <p><%=(unService==null)?" ":unService.LIBELLE %></p>
          </div>
          <div class="links">
            <div class="link">
              <img src="./images/twitch.png" alt="" />
              <h2><a href="#planning">EMPLOIS DE TEMPS </a></h2>
            </div>
            <div class="link">
              <img src="./images/steam.png" alt="" />
              <h2><a href="#dispo">DISPONIBLITES</a></h2>
            </div>
            <div class="link">
              <img src="/img/99.jpg" alt="" />
              <h2><a href="#fichePaie">FICHE DE PAYS</a></h2>
            </div>
            <div class="link">
              <img src="./images/library.png" alt="" />
              <h2><a href="#document">Documents</a></h2>
            </div>
          </div>
        </div>
      
    <main>
        
        


      <section class="glass">
        <div class="sante">
          <div class="status">
            <h1 style="margin-top:-180px;">Tableau de bord</h1>
          </div>


           
         
          <div class="cardPrincipal">



            <div class="card1" id="planning">
		
     <!-- SCHEDULE -->
     <section class="schedule section" id="schedule">
               <div class="container">
                    <div class="row">

                            <div class="col-lg-12 col-12 text-center">
                                <h6 data-aos="fade-up"></h6>

                                <h2 class="text-white" data-aos="fade-up" data-aos-delay="200">Tableau de bord</h2>
                             </div>

                             <div class="col-lg-12 py-5 col-md-12 col-12">
                                 <table class="table table-bordered table-responsive schedule-table" data-aos="fade-up" data-aos-delay="300">

                                     <thead class="thead-light">
                                         <th><i class="fa fa-calendar"></i></th>
                                         <th>Mon</th>
                                         <th>Tue</th>
                                         <th>Wed</th>
                                         <th>Thu</th>
                                         <th>Fri</th>
                                         <th>Sat</th>
                                     </thead>

                                     <tbody>
                                         <tr>
                                            <td><small>7:00 am</small></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>7:00 am - 9:00 am</span>
                                            </td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>7:00 am - 9:00 am</span>
                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>7:00 am - 9:00 am</span>
                                            </td>
                                              <td></td>
                                            
                                         </tr>

                                         <tr>
                                            <td><small>9:00 am</small></td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>8:00 am - 9:00 am</span>
                                            </td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>8:00 am - 9:00 am</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>8:00 am - 9:00 am</span>
                                            </td>
                                         </tr>

                                         <tr>
                                            <td><small>11:00 am</small></td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>11:00 am - 2:00 pm</span>
                                            </td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>11:30 am - 3:30 pm</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>11:50 am - 5:20 pm</span>
                                                <td></td>
                                            </td>
                                         </tr>

                                         <tr>
                                            <td><small>2:00 pm</small></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>2:00 pm - 4:00 pm</span>
                                            </td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>3:00 pm - 6:00 pm</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>6:00 pm - 9:00 pm</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>travail</strong>
                                                <span>5:00 pm - 7:00 pm</span>
                                            </td>
                                         </tr>
                                     </tbody>
                                 </table>
                             </div>

                    </div>
               </div>
     </section>

        </div>

                          <div class="card1" id="dispo">
		<div class="creneau">
         <% string chaine = "<table border= 1 > <tr> <td>Date </td> <td> Heure debut </td> ";
             chaine += " <td> heure fin </td><td>Opération</td></tr> ";
        List<sante1.Creneau> lesCreneau = uneBDD.selectAllCreneau ();
        foreach(sante1.Creneau unCreneau in lesCreneau)
             {
                 chaine += "<tr> <td>" + unCreneau.DATE+ "</td> <td> " + unCreneau.HEURE+ "</td> <td>" + unCreneau.HEUREFIN + "</td><td> ajouter</td>  " 

                ;
             }
             chaine += "</table>";%>

        
                <%= chaine %>
            </div>

                               <% 
                                   
                                   string chaine2 = "<table border= 1 > <tr> <td>Date </td> <td> Heure debut </td> ";

                                   chaine2 += " <td> heure fin </td><td>Opération</td></tr> ";
                                     int numpers2 = int.Parse(Request["numpers"]);
                                   List<sante1.Medecin_Creneau> lesCreneauMedecin = uneBDD.selectWhereMedecinCreneau(numpers2);
                                   foreach(sante1.Medecin_Creneau unCreneauMedecin in lesCreneauMedecin)
                                   {
                                       chaine2 += "<tr> <td>" + unCreneauMedecin.ID+ "</td> <td> " + unCreneauMedecin.NUMPERS+ "</td> <td>" 

                                      + "<td>";
                                   }
                                   chaine2 += "</table>";%>

        
                <%= chaine2 %>
        
        </div>

                          <div class="card1" id="fichePaie">
		



        </div>

               <div class="card1" id="document">
		<div class="form" style="margin-top:60px; width:50%;">
			<form class="login-form" action="" method="post">
                <i class="far fa-calendar-plus" style="color:green;"></i><br />
				Date :  <input class="user-input"  type="date" name="date" placeholder="date" required ><br />
				Heure début:<input class="user-input" type="time" name="heure" placeholder="heure" required><br />
				Heure Fin :<input class="user-input" type="time" name="heureFin" placeholder="heure" required>
			<input class="btn" type="submit" name="Ajouter" value="Ajouter">	
			</form>
            </div>
        </div>
             
          


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


.creneau td{
    background :green;

}



main {
    font-family: "Poppins", sans-serif;
    min-height: 100vh;
 
    display:flex;
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
    width: 30%;
    height:100%;
    background: linear-gradient( to right bottom, rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.3) );
    border-radius: 2rem;
    z-index: 999;
    backdrop-filter: blur(0.5rem);
     font-family: "Poppins", sans-serif;
 
    display:flex;
    align-items: center;
    justify-content: center;
    margin-top :-20px;
    

    flex-direction: column;
    justify-content: space-evenly;
position:fixed;   
    
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
    margin-top: 5rem;
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
.cardPrincipal{
    margin-left : 650px; 
}

</style>
  </body>
</html>
