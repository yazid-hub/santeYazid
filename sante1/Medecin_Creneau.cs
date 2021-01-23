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

        public Medecin_Creneau(int id, int numpers)
        {
            this.id = id;
            this.numpers = numpers;
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