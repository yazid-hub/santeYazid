using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sante1
{
    public class Medecin_Creneau
    {
        private int id;
        private int numpers;
        private string heure;
        private string date;
        private string heuref;
        

        public Medecin_Creneau(int id, int numpers, string date, string heure)
        {
            this.id = id;
            this.numpers = numpers;
            this.date = date;
            this.heure = heure;
         
        }
        public Medecin_Creneau(int id, int numpers)
        {
            this.id = id;
            this.numpers = numpers;
           
        }

        public Medecin_Creneau(string date, string heure , string heuref)
        {
           
            this.date = date;
            this.heure = heure;
            this.heuref = heuref;

        }
        public string DATE
        {
            get
            {
                return date;
            }
            set
            {
                this.date = value;
            }
        }
        public string Heure
        {
            get
            {
                return heure;
            }
            set
            {
                this.heure = value;
            }
        }

        public string HeureF
        {
            get
            {
                return heuref;
            }
            set
            {
                this.heuref = value;
            }
        }
        public int ID
        {
            get
            {
                return id;
            }
            set
            {
             this.id = value;
            }
        }

        public int NUMPERS
        {
            get
            {
                return numpers;
            }
            set
            {
                this.numpers = value;
            }
        }

    }
         
    
}