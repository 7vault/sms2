using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using DocumentFormat.OpenXml.Office.Word;


namespace sms2
{
    public class EtudiantDB
    {
        //public static SqlConnection dbConnection()
        //{
        //    SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        //    builder.DataSource = "DESKTOP-B9SS4MO";  // Replace with your server name
        //    //builder.UserID = "username";  // Replace with your username
        //    //builder.Password = "password";  // Replace with your password
        //    builder.InitialCatalog = "SGDE";

        //    SqlConnection connection = new SqlConnection(builder.ConnectionString);
        //    connection.Open();

        //    return connection;
        //}

        public static void createTable(SqlConnection connection)
        {
            // Command to create table
            string cmd = "CREATE TABLE IF NOT EXISTS Etudiants( etudiant_ID INT PRIMARY KEY IDENTITY(1,1), nom VARCHAR(50), prenom VARCHAR(50), ddn NVARCHAR(50)," +
                         " adresse NVARCHAR(50),email  NVARCHAR(MAX),telephone NVARCHAR(50),discipline VARCHAR(50), nationalite VARCHAR(50), sexe CHAR(10),datecree NVARCHAR(50) );";

            // Initiate command
            //SqlCommand cd = new SqlCommand(cmd, connection);
            //cd.ExecuteNonQuery();
        }

        //public static void insertData(SqlConnection connection, Etudiant etudiant)
        //{
        //    // Update command
        //    string insertPersonne = "INSERT INTO Etudiants (nom, prenom,ddn,adresse," +
        //                             " email,telephone,discipline ,nationalite,sexe,datecree) VALUES (@nom, @Prenom,@ddn," +
        //                             "@adresse, @email, @telephone, @discipline, @nationalite, @sexe,  @datecree);";

        //    //Initiate command
        //    SqlCommand command = new SqlCommand(insertPersonne, connection);
        //    //command.CommandTimeout = 120; //Timeout is set to 2 minutes
        //    command.Parameters.AddWithValue("@nom", etudiant.Nom);
        //    command.Parameters.AddWithValue("@prenom", etudiant.Prenom);
        //    command.Parameters.AddWithValue("@ddn", etudiant.DDN);
        //    command.Parameters.AddWithValue("@adresse", etudiant.Adresse);
        //    command.Parameters.AddWithValue("@email", etudiant.Email);
        //    command.Parameters.AddWithValue("@telephone", etudiant.Telephone);
        //    command.Parameters.AddWithValue("@discipline", etudiant.Discipline);
        //    command.Parameters.AddWithValue("@nationalite", etudiant.Nationalite);
        //    command.Parameters.AddWithValue("@sexe", etudiant.Sexe);
        //    command.Parameters.AddWithValue("@datecree", etudiant.DateCree);
            

        //    command.ExecuteNonQuery();
        //}


    }

}
