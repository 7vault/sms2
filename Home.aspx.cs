using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sms2
{
    public partial class Home : System.Web.UI.Page
    {
        String Datecree = DateTime.Today.ToString("dd-MM-yyyy");
        Etudiant etudiant;
        EtudiantDB db = new EtudiantDB();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            EtudiantDB.createTable(conn);
           
            txtDateCree.Text = Datecree;
            txtNom.Focus();
            Display();
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

            String connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Execute a SQL command 

                // Update command
                string insertPersonne = "INSERT INTO Etudiants (nom, prenom,ddn, adresse," +
                                     " email,telephone,discipline ,nationalite,sexe,datecree) VALUES (@nom, @Prenom,@ddn," +
                                     "@adresse, @email, @telephone, @discipline, @nationalite, @sexe,  @datecree);";

                //Initiate command
                SqlCommand command = new SqlCommand(insertPersonne, connection);
                command.Parameters.AddWithValue("@nom", nom);
                command.Parameters.AddWithValue("@prenom", prenom);
                command.Parameters.AddWithValue("@ddn", ddn);
                command.Parameters.AddWithValue("@adresse", adresse);
                command.Parameters.AddWithValue("@email", email);
                command.Parameters.AddWithValue("@telephone", telephone);
                command.Parameters.AddWithValue("@discipline", discipline);
                command.Parameters.AddWithValue("@nationalite", nationalite);
                command.Parameters.AddWithValue("@sexe", sexe);
                command.Parameters.AddWithValue("@datecree", Datecree);
               

                command.ExecuteNonQuery();

                connection.Close();

                //etudiant = new Etudiant(nom, prenom,ddn,nationalite, sexe, adresse, email, telephone,  discipline, DateTime.Now.ToString("d"));
                //EtudiantDB.insertData(conn, etudiant);

                Display();


                Delete();
            }
        }

        private void Display()
        {
            using (SqlCommand cmd = new SqlCommand("SELECT  DISTINCT nom,Prenom,ddn, telephone FROM Etudiants"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dataTable = new DataTable())
                    {
                        sda.Fill(dataTable);
                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                      

                    }
                   

                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Delete();
        }


        private void Delete()
        {
            txtNom.Text = String.Empty;
            txtPrenom.Text = String.Empty;
            txtDdn.Text = String.Empty;
            txtAdress.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtTelephone.Text = String.Empty;
            txtDiscipline.Text = String.Empty;
            txtNationalite.Text = String.Empty;
            txtSexe.Text = String.Empty;

        }
      
    }
}