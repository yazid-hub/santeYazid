using System;
namespace ProjetAdmin
{
    public class Administrateur : Personel
    {
        private string code;

        public Administrateur(int numpers, string nom, string prenom, string adresse, string ville, int tel, string dateembauche, string password, string mail)
            : base(numpers, nom, prenom, adresse, ville, tel, dateembauche, password, mail)

        {
            this.code = "";
        }

        public string CODE
        {
            get
            {
                return this.code;

            }
            set
            {
                this.code = value;
            }

        }

    }
}
