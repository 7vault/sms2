using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sms2
{
    public class Cours
    {

        private String _nomCours; String _cours_ID; String _dd_Cours; int _credits; String _horaire;
        public Cours(string NomCours, String Cours_ID, String DD_Cours, int Credits, String Horaire)
        {
            this.NomCours = NomCours;
            this.Cours_ID = Cours_ID;
            this.DD_Cours = DD_Cours;
            this.Credits = Credits;
            this.Horaire = Horaire;
        }

        public string NomCours
        {
            get => NomCours;
            set => NomCours = value.First().ToString().ToUpper() + value.Substring(1);
        }

        public string Cours_ID
        {
            get => Cours_ID;
            set => Cours_ID = value;
        }

        public string DD_Cours
        {
            get => DD_Cours;
            set => DD_Cours = value;
        }

        public int Credits
        {
            get => Credits;
            set => Credits = value;
        }

        public string Horaire
        {
            get => Horaire;
            set => Horaire = value;
        }





    }
}