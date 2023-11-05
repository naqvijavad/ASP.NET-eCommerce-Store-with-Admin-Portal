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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "username" session variable is null or empty
            if (String.IsNullOrEmpty(Session["username"] as String))
            {
                // If the user is not logged in (username session variable is empty), redirect to the login page
                Response.Redirect("Login.aspx");
            }

        }

    }
}