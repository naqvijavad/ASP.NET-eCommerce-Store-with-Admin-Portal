// Student Name
// Krushangi Patel (8859466)
// Parv Isotiya (8856428)
// Bhavika Patel (8826226)
// Javad Naqvi (8841544)


using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ThePerfumeStore.models;

namespace ThePerfumeStore
{
    public partial class CheckOut : System.Web.UI.Page
    {
        // Create a new SqlConnection object using the connection string from the configuration file
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ThePerfumeStore_PerfumeData"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "username" session variable is null or empty
            if (String.IsNullOrEmpty(Session["username"] as String))
            {
                // If the "username" session variable is empty or not set (user not logged in),
                // redirect the user to the "Login.aspx" page for authentication
                Response.Redirect("Login.aspx");
            }



        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            // Extract the user input data from text fields
            string email = txtEmail.Text.Trim().ToString();
            string fname = txtFname.Text.Trim().ToString();
            string lname = txtLname.Text.Trim().ToString();
            string phone = txtPhone.Text.Trim().ToString();
            string address = txtAddress.Text.Trim().ToString();
            string zip = txtZipcode.Text.Trim().ToString();
            string state = txtState.Text.Trim().ToString();
            string city = txtCity.Text.Trim().ToString();

            // Build the full address by combining address, city, state, and zip
            string full_address = address + ", " + city + ", " + state + " - " + zip;

            // Retrieve the cart items stored in the session
            var cartItems = Session["cartItems"] as List<clsCart>;

            // Initialize variables to store order details
            string name = "";
            double total = 0;

            // Iterate through the cart items to create a display-friendly order summary
            foreach (var cartItem in cartItems)
            {
                name += "(" + cartItem.quantity + ") X " + cartItem.name + "<br />";
                total += cartItem.total;
            }

            // Construct the SQL query to insert order details into the "Order" table
            string query = "INSERT INTO [Order]  VALUES( '" + name + "', '" + full_address + "', '" + fname + "', '" + lname + "', '" + phone + "', '" + email + "', '" + total + "', " + Convert.ToInt32(Session["userId"]) + ")";

            // Create a SqlCommand to execute the query using the established database connection
            SqlCommand cmd2 = new SqlCommand(query, connection);

            // Open the database connection and execute the query
            connection.Open();
            cmd2.ExecuteNonQuery();
            connection.Close();

            // Clear the cart items from the session after successful order placement
            Session["cartItems"] = new List<clsCart>();

            // Redirect the user to the "Order.aspx" page to display order confirmation
            Response.Redirect("Order.aspx");


        }
    }
}