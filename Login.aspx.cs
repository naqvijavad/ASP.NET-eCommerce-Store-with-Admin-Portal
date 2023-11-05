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
    public partial class _Default : Page
    {
        // Create a new SqlConnection object using the connection string from the configuration file
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ThePerfumeStore_PerfumeData"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "username" session variable is not null or empty
            if (!String.IsNullOrEmpty(Session["username"] as String))
            {
                // If the user is already logged in (username session variable is not empty), redirect to the home page
                Response.Redirect("Home.aspx");
            }

        }

        protected void _login(object sender, EventArgs e)
        {
            // Extract the values entered by the user: username and password
            string username = txtUsername.Text.Trim().ToString();
            string password = txtPassword.Text.Trim().ToString();

            // Check if either username or password is empty
            if (username == "" || password == "")
            {
                lblWarning.Text = "Please enter valid username or password";
                return; // Exit the function early if input is missing
            }

            // Create a SqlCommand to retrieve user data from the Users table based on the provided username
            SqlCommand cmd = new SqlCommand("SELECT * from Users where username = '" + username + "'", connection);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            // Fill the DataTable with user data from the database
            da.Fill(dt);

            // Check if user data was retrieved from the database
            if (dt.Rows.Count > 0)
            {
                // Check if the provided password matches the password stored in the database
                if (password.ToString() == dt.Rows[0][2].ToString())
                {
                    // Check if the user is an admin
                    if (dt.Rows[0][3].ToString() == "Admin")
                    {
                        // If user is an admin, set the "admin" session variable and redirect to the admin page
                        Session["admin"] = dt.Rows[0][1].ToString();
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        // If user is not an admin, set "username" and "userId" session variables
                        Session["username"] = dt.Rows[0][1].ToString();
                        Session["userId"] = dt.Rows[0][0].ToString();
                    }
                }
                else
                {
                    lblWarning.Text = "Wrong Credentials, please try again"; // Display a warning for incorrect password
                }
            }
            else
            {
                lblWarning.Text = "User doesn't exist, please register"; // Display a warning if user doesn't exist
            }

        }
    }
}