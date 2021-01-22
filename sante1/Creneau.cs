using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sante1
{
    public class Creneau
    {


			private int id;
			private String date;
			private String Heure;
		private string HeureFin;


			public Creneau(int id, String date, String Heure,string HeureFin)
			{
				this.id = id;
				this.date = date;
				this.Heure = Heure;
			this.HeureFin = HeureFin;
			}
		public Creneau( String date, String Heure, string HeureFin)
		{
			this.id = 0;
			this.date = date;
			this.Heure = Heure;
			this.HeureFin = HeureFin;
		}
		public int ID
		{
			get
			{
				return this.id;
			}
			set
			{
				this.id = value;
			}
		}
		public string HEURE
		{
			get
			{
				return this.Heure;
			}
			set
			{
				this.Heure = value;
			}
		}
		public string HEUREFIN
		{
			get
			{
				return this.HeureFin;
			}
			set
			{
				this.HeureFin = value;
			}
		}
		public string DATE
		{
			get
			{
				return this.date;
			}
			set
			{
				this.date = value;
			}
		}



		

	}
}