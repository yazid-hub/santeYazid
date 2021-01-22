using System;
namespace sante1
{
    public  class Personel
    {
        private int numpers;
        private string nom, prenom, adress, ville, dateembauche, password, mail, tel;
        public Personel()
        {
            this.numpers = 0;
            this.nom = "";
            this.prenom = "";
            this.adress = "";
            this.ville = "";
            this.tel = "";
            this.dateembauche = "";
            this.password = "";
            this.mail = "";


        }
        public Personel(int numpers, string nom, string prenom, string mail,string adress, string ville, string tel, string dateembauche, string password)
        {
            this.numpers = numpers;
            this.nom = nom;
            this.prenom = prenom;
            this.mail = mail;
            this.adress = adress;
            this.ville = ville;
            this.tel = tel;
            this.dateembauche = dateembauche;
            this.password = password;
           


        }
        public Personel(string nom, string prenom, string adresse, string ville, string tel, string dateembauche, string password, string mail)
        {
            this.numpers = 0;
            this.nom = nom;
            this.prenom = prenom;
            this.adress = adresse;
            this.ville = ville;
            this.tel = tel;
            this.dateembauche = dateembauche;
            this.password = password;
            this.mail = mail;


        }

        public int numPers
        {
            get
            {
                return this.numpers;
            }
            set
            {
                this.numpers = value;
            }
        }
        public string NOM
        {
            get
            {
                return this.nom;
            }
            set
            {
                this.nom = value;
            }
        }
        public string PRENOM
        {
            get
            {
                return this.prenom;
            }
            set
            {
                this.prenom = value;
            }
        }

        public string ADRESSE
        {
            get
            {
                return this.adress;
            }
            set
            {
                this.adress = value;
            }
        }
        public string VILLE
        {
            get
            {
                return this.ville;
            }
            set
            {
                this.ville = value;
            }
        }

        public string TEL
        {
            get
            {
                return this.tel;
            }
            set
            {
                this.tel = value;
            }
        }

        public string DATEEMBAUCHE
        {
            get
            {
                return this.dateembauche;
            }
            set
            {
                this.dateembauche = value;
            }
        }

        public string PASSWORD
        {
            get
            {
                return this.password;
            }
            set
            {
                this.password = value;
            }
        }
        public string MAIL
        {
            get
            {
                return this.mail;
            }
            set
            {
                this.mail = value;
            }
        }

    }
}
