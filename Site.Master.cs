// Student Name
// Krushangi Patel (8859466)
// Parv Isotiya (8856428)
// Bhavika Patel (8826226)
// Javad Naqvi (8841544)

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePerfumeStore
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "username" session variable is null or empty
            if (String.IsNullOrEmpty(Session["username"] as String))
            {
                // If the session variable is null or empty, set the text of btnLoginmas to "Login"
                btnLoginmas.Text = "Login";
            }
            else
            {
                // If the session variable is not null or empty, set the text of btnLoginmas to "Logout"
                btnLoginmas.Text = "Logout";
            }

        }

        protected void btn_login(object sender, EventArgs e)
        {
            // Clear the session variables for username and userId, effectively logging the user out
            Session["username"] = ""; // Clearing the username session variable
            Session["userId"] = "";   // Clearing the userId session variable

            // Redirect the user to the "Login.aspx" page after logging out
            Response.Redirect("Login.aspx");
        }

    }
}