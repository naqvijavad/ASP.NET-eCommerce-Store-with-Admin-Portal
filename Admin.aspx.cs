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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is not logged in as an admin
            if (String.IsNullOrEmpty(Session["admin"] as String))
            {
                // If the user is not logged in as an admin (admin session variable is empty),
                // redirect to the login page for authentication
                Response.Redirect("Login.aspx");
            }

        }
    }
}