

using System; 

using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sante1


{
    public class Medecin : Personel
    {

        public Medecin(int numpers, string nom, string prenom, string adresse, string ville, string tel, string dateembauche, string password, string mail) : base(numpers, nom, prenom, adresse, ville, tel, dateembauche, password, mail)
        {

        }
        public Medecin(string nom, string prenom, string adresse, string ville, string tel, string dateembauche, string password, string mail) : base(nom, prenom, adresse, ville, tel, dateembauche, password, mail)
        {

        }
    }
}