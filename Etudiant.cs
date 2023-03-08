﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sms2
{
    public class Etudiant
    {

        private String _nom; String _prenom; String _ddN; String _nationalite; String _sexe; String _adresse; String email; String _telephone; String _discipline; String _etudiant_ID; String _dateCree;


        public Etudiant(string Nom, String Prenom, String DDN, String Nationalite, String Sexe, String Adresse, String Email, String Telephone, String Discipline, String DateCree)
        {
            this.Nom = Nom;
            this.Prenom = Prenom;
            this.DDN = DDN;
            this.Nationalite = Nationalite;
            this.Sexe = Sexe;
            this.Adresse = Adresse;
            this.Email = Email;
            this.Telephone = Telephone;
            this.Discipline = Discipline;
          
            this.DateCree = DateCree;



        }


        public string Nom
        {
            get => _nom;
            set => _nom = value.First().ToString().ToUpper() + value.Substring(1);
        }

        public string Prenom
        {
            get => _prenom;
            set => _prenom = value.First().ToString().ToUpper() + value.Substring(1);

        }
        public string DDN
        {
            get => DDN;
            set => DDN = value;
        }


        public string Nationalite
        {
            get => _nationalite;
            set => _nationalite = value.First().ToString().ToUpper() + value.Substring(1);

        }

        public string Sexe
        {
            get => Sexe;
            set => Sexe = value;
        }

        public string Adresse
        {
            get => _adresse;
            set => _adresse = value;
        }

        public string Email
        {
            get => Email;
            set => Email = value;
        }

        public string Telephone
        {
            get => _telephone;
            set => _telephone = value;
        }

        public string Discipline
        {
            get => Discipline;
            set => Discipline = value.First().ToString().ToUpper() + value.Substring(1);
        }
        public string Etudiant_ID
        {
            get => Etudiant_ID;
            set => Etudiant_ID = value;

        }

        public string DateCree
        {
            get => _dateCree;
            set => _dateCree = DateTime.Now.ToString("dd-MM-yyyy");
        }

        public override string ToString()
        {
            return Nom + " " + Prenom;
        }

    }

}
