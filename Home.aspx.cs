using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sms2
{
    public partial class Home : System.Web.UI.Page
    {

        Etudiant etudiant;
        List<Etudiant> Personnes = new List<Etudiant>();
        EtudiantDB db = new EtudiantDB();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string nom = txtNom.Text;
            string prenom = txtPrenom.Text;
            string ddn = txtDdn.Text;
            string email = txtEmail.Text;
            string discipline = txtDiscipline.Text;
            string adresse = txtAdress.Text;
            string nationalite = txtNationalite.Text;
            string sexe = txtSexe.Text;
            string telephone = txtTelephone.Text;

            etudiant = new Etudiant(nom, prenom, ddn, nationalite, sexe, adresse, email, telephone,  discipline, DateTime.Now.ToString("d"));
            EtudiantDB.insertData(conn, etudiant);


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }
    }
}