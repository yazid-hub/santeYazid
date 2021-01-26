using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data.Common;

namespace sante1

{
    public class Bdd
    {
        private string serveur, bdd, user, mdp;
        private MySqlConnection maConnexion;
        public Bdd(string serveur, string bdd, string user, string mdp)
        {
            this.serveur = serveur;
            this.bdd = bdd;
            this.user = user;
            this.mdp = mdp;
            string url = "SERVER=" + this.serveur + ";port=3306" + ";Database=" + this.bdd + ";User Id=" + this.user + ";password=" + this.mdp;

            try
            {
                this.maConnexion = new MySqlConnection(url);
                Console.WriteLine("connexion réuissie");
            }
            catch (Exception exp)
            {
                Console.WriteLine("Erreur de connexion à  : " + url);
                Console.WriteLine(exp.Message);

            }
        }

        public void insertPersonel(sante1.Personel unPersonel)
        {
            string requete = "";
            try
            {
                this.maConnexion.Open();

                requete = "insert into Personel values (null, @Nom, @Prenom,@Mail , @Adress, @Ville, @Tel,@DateEmbauche,@mdp );";

                MySqlCommand cmd = this.maConnexion.CreateCommand();

                cmd.CommandText = requete;

                //correspondance des parametres et des valeurs
                cmd.Parameters.AddWithValue("@Nom", unPersonel.NOM);
                cmd.Parameters.AddWithValue("@Prenom", unPersonel.PRENOM);
                cmd.Parameters.AddWithValue("@mdp", unPersonel.PASSWORD);
                cmd.Parameters.AddWithValue("@Mail", unPersonel.MAIL);
                cmd.Parameters.AddWithValue("@Adress", unPersonel.ADRESSE);
                cmd.Parameters.AddWithValue("@Ville", unPersonel.VILLE);
                cmd.Parameters.AddWithValue("@Tel", unPersonel.TEL);
                cmd.Parameters.AddWithValue("@DateEmbauche", unPersonel.DATEEMBAUCHE);
               
                //on execute la requete
                cmd.ExecuteNonQuery();

                this.maConnexion.Close();
            }
            catch (Exception exp)
            {
                Console.WriteLine("Erreur d'execution de la requete :" + requete);
                Console.WriteLine(exp.Message);

            }
        }
        public void insertCreneu(sante1.Creneau unCreneau)
        {
            string requete = "";
            try
            {
                this.maConnexion.Open();

                requete = "insert into Creneau  values (null, @date, @heure,@heurefin);";

                MySqlCommand cmd = this.maConnexion.CreateCommand();

                cmd.CommandText = requete;

                //correspondance des parametres et des valeurs
                cmd.Parameters.AddWithValue("@date", unCreneau.DATE);
                cmd.Parameters.AddWithValue("@heure", unCreneau.HEURE);
                cmd.Parameters.AddWithValue("@heurefin", unCreneau.HEUREFIN);

                //on execute la requete
                cmd.ExecuteNonQuery();

                this.maConnexion.Close();
            }
            catch (Exception exp)
            {
                Console.WriteLine("Erreur d'execution de la requete :" + requete);
                Console.WriteLine(exp.Message);

            }
        }
        public void insertMedecin_Creneu(sante1.Medecin_Creneau unMedecin_Creneau)
        {
            string requete = "";
            try
            {
                this.maConnexion.Open();

                requete = "insert into Medecin_Creneau  values ( @id, @numpers);";

                MySqlCommand cmd = this.maConnexion.CreateCommand();

                cmd.CommandText = requete;

                //correspondance des parametres et des valeurs
                cmd.Parameters.AddWithValue("@id", unMedecin_Creneau.ID);
                cmd.Parameters.AddWithValue("@numpers", unMedecin_Creneau.NUMPERS);
              

                //on execute la requete
                cmd.ExecuteNonQuery();

                this.maConnexion.Close();
            }
            catch (Exception exp)
            {
                Console.WriteLine("Erreur d'execution de la requete :" + requete);
                Console.WriteLine(exp.Message);

            }
        }

        public List<Medecin_Creneau> selectWhereMedecinCreneau(int numpers)
        {
            List<Medecin_Creneau> lesCreneauMedecin = new List<Medecin_Creneau>(); string requete = "select * from Medecin_creneau , creneau , medecin where creneau.id=medecin_creneau.id and medecin.numpers=medecin_creneau.numpers;";
            try
            {                // ouverture de la connexion mysql               
                this.maConnexion.Open();
                MySqlCommand cmd = this.maConnexion.CreateCommand();
                cmd.CommandText = requete;
                // parcourir les enregistrement de la table
                DbDataReader unReader = cmd.ExecuteReader(); try
                {
                    if (unReader.HasRows)
                    {
                        while (unReader.Read())
                        {
                            Medecin_Creneau unCreneauMedecin = new Medecin_Creneau(unReader.GetInt32(6), unReader.GetInt32(7), unReader.GetString(6),unReader.GetString(7)) ;
                          
                            lesCreneauMedecin.Add(unCreneauMedecin);
                        }
                    }
                }
                finally { Console.WriteLine("Erreur d'extraction des données de la table "); }                // fermeture de la connexion       
                this.maConnexion.Close();
            }
            catch (Exception)
            {
                Console.WriteLine("Erreur d'éxécution de la requete: " + requete);
            }
            return lesCreneauMedecin;
        }



        public Medecin selectWhereMedecin(string Mail, string mdp)
        {
            Medecin unMedecin = null;
            string requete = "select * from personel where mail = @mail and mdp=@mdp ;";
            try
            {
                // ouverture de la connexion mysq
                this.maConnexion.Open();
                MySqlCommand cmd = this.maConnexion.CreateCommand();

                cmd.CommandText = requete;

                cmd.Parameters.AddWithValue("@mail", Mail);

                cmd.Parameters.AddWithValue("@mdp", mdp);

                DbDataReader unReader = cmd.ExecuteReader();

                try

                {
                    if (unReader.HasRows)
                    {
                        while (unReader.Read())

                        {
                            unMedecin = new Medecin(

                            unReader.GetInt32(0), unReader.GetString(1), unReader.GetString(2), unReader.GetString(3), unReader.GetString(4),

                            unReader.GetString(5), unReader.GetString(6), unReader.GetString(7), unReader.GetString(8));
                        }

                    }

                }

                finally
                {
                    Console.WriteLine("Erreur d'extraction des données de la table ");

                }
                // fermeture de la connexion
                this.maConnexion.Close();
            }
            catch (Exception)
            {
                Console.WriteLine("Erreur d'éxécution de la requete: " + requete);
            }
            return unMedecin;
        }

        
        public Service selectWhereService(int numpers)
        {
            Service unService = null;
            string requete = "select * from medecin ,  service where  service.numservice=medecin.numservice and numpers=@numpers ;";
            try
            {
                // ouverture de la connexion mysq
                this.maConnexion.Open();
                MySqlCommand cmd = this.maConnexion.CreateCommand();

                cmd.CommandText = requete;

              

                cmd.Parameters.AddWithValue("@numpers", numpers);

                DbDataReader unReader = cmd.ExecuteReader();

                try

                {
                    if (unReader.HasRows)
                    {
                        while (unReader.Read())

                        {
                            unService = new Service (

                            unReader.GetInt32(0), unReader.GetString(3));
                        }

                    }

                }

                finally
                {
                    Console.WriteLine("Erreur d'extraction des données de la table ");

                }
                // fermeture de la connexion
                this.maConnexion.Close();
            }
            catch (Exception)
            {
                Console.WriteLine("Erreur d'éxécution de la requete: " + requete);
            }
            return unService;
        }


        public List<Creneau> selectAllCreneau()
        {
            List<Creneau> lesCreneau = new List<Creneau>(); string requete = "select * from creneau;"; 
            try
            {                // ouverture de la connexion mysql               
                this.maConnexion.Open();               
                MySqlCommand cmd = this.maConnexion.CreateCommand();
                cmd.CommandText = requete;
                // parcourir les enregistrement de la table
                DbDataReader unReader = cmd.ExecuteReader(); try
                {
                    if (unReader.HasRows)
                    {
                        while (unReader.Read())
                        {
                            Creneau unCreneau = new Creneau(unReader.GetInt32(0), unReader.GetString(1), unReader.GetString(2), unReader.GetString(3));
                            lesCreneau.Add(unCreneau);
                        }
                    }
                }
                finally { Console.WriteLine("Erreur d'extraction des données de la table "); }                // fermeture de la connexion       
                this.maConnexion.Close();          
            }       
            catch (Exception) {              
                Console.WriteLine("Erreur d'éxécution de la requete: " + requete);            }      
            return lesCreneau;    
        }


                public Medecin selectWhereMedecins(int numpers)
        {
            Medecin unMedecin = null;
            string requete = "select * from personel where numpers = @numpers ;";
            try
            {
                // ouverture de la connexion mysq
                this.maConnexion.Open();
                MySqlCommand cmd = this.maConnexion.CreateCommand();

                cmd.CommandText = requete;



                cmd.Parameters.AddWithValue("@numpers", numpers);

                DbDataReader unReader = cmd.ExecuteReader();

                try

                {
                    if (unReader.HasRows)
                    {
                        while (unReader.Read())

                        {
                            unMedecin = new Medecin(

                            unReader.GetInt32(0), unReader.GetString(1), unReader.GetString(2), unReader.GetString(3), unReader.GetString(4),

                            unReader.GetString(5), unReader.GetString(6), unReader.GetString(7), unReader.GetString(8));
                        }

                    }

                }

                finally
                {
                    Console.WriteLine("Erreur d'extraction des données de la table ");

                }
                // fermeture de la connexion
                this.maConnexion.Close();
            }
            catch (Exception)
            {
                Console.WriteLine("Erreur d'éxécution de la requete: " + requete);
            }
            return unMedecin;
        }

    }
}
