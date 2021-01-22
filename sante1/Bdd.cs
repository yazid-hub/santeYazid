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


    }
}
