using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sms2
{
    public class Etudiant
    {

        private String _nom, _prenom,_ddn, _nationalite, _sexe,  _adresse, _email,  _telephone, _discipline, _dateCree;


        public Etudiant(string Nom, string Prenom, string DDN,string Nationalite, string Sexe, string Adresse, string Email, string Telephone, string Discipline, string DateCree)
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
            get => _ddn;
            set => _ddn = value;
        }


        public string Nationalite
        {
            get => _nationalite;
            set => _nationalite = value.First().ToString().ToUpper() + value.Substring(1);

        }

        public string Sexe
        {
            get => _sexe;
            set => _sexe = value;
        }

        public string Adresse
        {
            get => _adresse;
            set => _adresse = value;
        }

        public string Email
        {
            get => _email;
            set => _email = value;
        }

        public string Telephone
        {
            get => _telephone;
            set => _telephone = value;
        }

        public string Discipline
        {
            get => _discipline;
            set => _discipline = value.First().ToString().ToUpper() + value.Substring(1);
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
