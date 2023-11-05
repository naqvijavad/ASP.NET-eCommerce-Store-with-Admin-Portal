// Student Name
// Krushangi Patel (8859466)
// Parv Isotiya (8856428)
// Bhavika Patel (8826226)
// Javad Naqvi (8841544)


using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePerfumeStore
{
    public partial class Register : System.Web.UI.Page
    {
        // Create a new SqlConnection object using the connection string from the configuration file
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ThePerfumeStore_PerfumeData"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _Register(object sender, EventArgs e)
        {
            // Extract the values entered by the user: username, password, and user type
            string username = txtUsername.Text.Trim().ToString();
            string password = txtPassword.Text.Trim().ToString();
            string usertype = ddlUserType.SelectedValue.ToString();

            // Check if either username or password is empty
            if (username == "" || password == "")
            {
                lblWarning.Text = "Please enter username or password";
                return; // Exit the function early if input is missing
            }

            // Create a SqlCommand to select user data from the Users table based on the provided username
            SqlCommand cmd = new SqlCommand("SELECT * from Users where username = '" + username + "'", connection);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            try
            {
                // Fill the DataTable with the results of the SQL query
                da.Fill(dt);

                // Check if a user with the provided username already exists
                if (dt.Rows.Count == 0)
                {
                    // If no user exists, insert a new user into the Users table
                    string query = "insert into Users values('" + username + "','" + password + "','" + usertype + "')";
                    SqlCommand cmd2 = new SqlCommand(query, connection);
                    connection.Open();
                    cmd2.ExecuteNonQuery();
                    connection.Close();

                    // Redirect to the "Login.aspx" page after successful registration
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    lblWarning.Text = "User Already exists!!!"; // Display a warning if the user already exists
                }
            }
            catch
            {
                // If an exception occurs during the above database operations, attempt to insert the user again
                string query = "insert into Users values('" + username + "','" + password + "','" + usertype + "')";
                SqlCommand cmd2 = new SqlCommand(query, connection);
                connection.Open();
                try
                {
                    cmd2.ExecuteNonQuery();
                    connection.Close();
                    Response.Redirect("Login.aspx");
                }
                catch
                {
                    lblWarning.Text = "User Already exists!!!"; // Display a warning if the user still already exists
                }
                connection.Close();
            }

        }
    }
}