using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace sante1
{
    public class Service
    {
        private int numservice; 
        private string libelle;


        public Service() { this.numservice = 0; this.libelle = ""; }
        public Service(int numservice, string libelle) { this.numservice = numservice; this.libelle = libelle; }
        public Service(string libelle) { this.numservice = 0; this.libelle = libelle; }
        public int numService { get { return this.numservice; } set { this.numservice = value; } }
        public string LIBELLE { get { return this.libelle; } set { this.libelle = value; } }
    }
}