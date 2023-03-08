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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void btnForgetPassword_Click(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

            String UserName = txtUserName.Text;
            String Password = txtPassword.Text;
            String UserType = "";



            // Connect to the database
            String connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Execute a SQL command 
                SqlCommand command = new SqlCommand("SELECT UserType FROM Users WHERE UserName=@UserName And Password=@Password", connection);
                command.Parameters.AddWithValue("@UserName", UserName);
                command.Parameters.AddWithValue("@Password", Password);
                SqlDataReader reader = command.ExecuteReader();
                if(reader.Read())
                {
                    UserType = reader.GetString(0);
                    reader.Close();

                   
                }
               


            }
            if (UserType == "admin")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid ";

            }

        }
    }
}