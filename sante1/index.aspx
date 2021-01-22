<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta charset="utf-8">
    <title></title>
     <link rel="stylesheet" href="Style.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">  
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />        
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"charset="utf-8"></script>
       <script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
            <li><a  href="default.aspx"> page principale</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">aide</a></li>
        </ul>
      </nav>
  <!--Fin Menu Principale-->

<!-- barre de recherche-->


<style>
    *{
        text-decoration:none;
    }
.custom-select {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;

}
.container{
 margin-top:200px;
 
 }
</style>

<div class="container">
  <form action="/recherche/" method="get">
    <fieldset>    
      <div class="input-group">
        <div class="input-group-prepend">
          <select id="oCategorie" name="oCategorie" class="custom-select bg-success text-light">
            <option selected="selected" value="0">Categorie</option>
            <option value="1">...</option>
          </select>
        </div>
        <input id="oSaisie" name="oSaisie" type="text" class="form-control" aria-label="Saisie de mots clés" placeholder="Mot(s) cle(s)" required="required">
        <div class="input-group-append">
          <button class="btn btn-success" type="submit">Recherche</button>
        </div>
      </div>
    </fieldset> 
  </form>
</div>


  <section class="about fabout" id="">
        <div class="max-width">
            <h2 class="title"></h2>
            <div class="about-content">
                <div class="column left">
                    <img src="/img/3.jpg" alt="">
                </div>
                <div class="column right">
                    <div class="text" >Bienvenue au CENTRE DE SANTE avant tout <span class="typing-2"></span></div><p style='text-transform: uppercase;'>
                    <p>
Logiciel avancé de planification des employés simplifié
Gestion planning vous aide à créer plus rapidement un emploi du temps des employés en tenant compte des vacances du personnel, de la disponibilité, etc.
                        </p>
                    <a href="">Savoir plus</a>
                </div>
            </div>
        </div>
    </section>
<!--fin barre de recherche -->

<!--debut section page acceuil -->
<section class="teams" id="teams">
      <div class="max-width">
          <h2 class="title"></h2>
          <div class="carousel owl-carousel">
              <div class="card">
                  <div class="box">
                    <a href ="inscription_connexion.aspx">  <img src="/img/rdv.jpg" alt=""></a>
                      <div class="text">Gestion Planning</div>
                  </div>
              </div>
              <div class="card">
                  <div class="box">
                     <a href ="inscription_connexion.aspx">  <img src="/img/7.jpg" alt=""></a>
                      <div class="text">Vos fiches de paies</div>
                  </div>
              </div>
              <div class="card">
                  <div class="box">
                      <a href ="inscription_connexion.aspx"> <img src="/img/3.jpg" alt=""></a>
                      <div class="text">diposer vous congés</div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!--fin section page acceuil -->
  
  
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

  
</body>
 </html>
