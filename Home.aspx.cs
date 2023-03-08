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
            //string ddn = txtDdn.Text;
            string email = txtEmail.Text;
            string discipline = txtDiscipline.Text;
            string adresse = txtAdress.Text;
            string nationalite = txtNationalite.Text;
            string sexe = txtSexe.Text;
            string telephone = txtTelephone.Text;

            String connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Execute a SQL command 

                // Update command
                string insertPersonne = "INSERT INTO Etudiants (nom, prenom, adresse," +
                                     " email,telephone,discipline ,nationalite,sexe,datecree) VALUES (@nom, @Prenom," +
                                     "@adresse, @email, @telephone, @discipline, @nationalite, @sexe,  @datecree);";

                //Initiate command
                SqlCommand command = new SqlCommand(insertPersonne, connection);
                command.Parameters.AddWithValue("@nom", nom);
                command.Parameters.AddWithValue("@prenom", prenom);
                //command.Parameters.AddWithValue("@ddn", etudiant.DDN);
                command.Parameters.AddWithValue("@adresse", adresse);
                command.Parameters.AddWithValue("@email", email);
                command.Parameters.AddWithValue("@telephone", telephone);
                command.Parameters.AddWithValue("@discipline", discipline);
                command.Parameters.AddWithValue("@nationalite", nationalite);
                command.Parameters.AddWithValue("@sexe", sexe);
                command.Parameters.AddWithValue("@datecree", DateTime.Now.ToString("d"));
                //command.Parameters.AddWithValue("@datecree", etudiant.DateCree);

                command.ExecuteNonQuery();

                connection.Close();

                //etudiant = new Etudiant(nom, prenom, nationalite, sexe, adresse, email, telephone,  discipline, DateTime.Now.ToString("d"));
                //EtudiantDB.insertData(conn, etudiant);

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }
    }
}