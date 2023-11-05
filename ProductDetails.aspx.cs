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
using ThePerfumeStore.models;

namespace ThePerfumeStore
{
    public partial class ProdwuctDetails : System.Web.UI.Page
    {

        // Declare a variable to hold an identifier (presumably user ID or session ID)
        string id;

        // Create a list to store cart items using the clsCart class (not shown in the provided code)
        List<clsCart> cartItems = new List<clsCart>();

        // Create a new SqlConnection object using the connection string from the configuration file
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ThePerfumeStore_PerfumeData"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "username" session variable is null or empty, and if so, redirect to the login page
            if (String.IsNullOrEmpty(Session["username"] as String))
            {
                Response.Redirect("Login.aspx");
            }

            // Retrieve the "ID" parameter from the query string and store it in the "id" variable
            id = Request.QueryString["ID"].ToString();

            // Check if the page is not being loaded in a postback
            if (!IsPostBack)
            {
                // Retrieve the list of cart items from the session
                var listcls = Session["cartItems"] as List<clsCart>;

                // If the list is null or empty, initialize it with an empty cartItems list
                if (listcls == null || listcls.Count == 0)
                {
                    Session["cartItems"] = cartItems;
                }
            }

            // Create a SqlCommand to retrieve product data from the "Product" table based on the provided "id"
            SqlCommand sqlCommand = new SqlCommand("SELECT * from Product where Id =" + id, connection);
            DataTable dataTable = new DataTable();
            SqlDataAdapter sqldataAdapter = new SqlDataAdapter(sqlCommand);

            // Open the database connection
            connection.Open();
            sqldataAdapter.Fill(dataTable); // Fill the DataTable with product data

            // Check if there are rows in the DataTable
            if (dataTable.Rows.Count > 0)
            {
                // Retrieve product details from the DataTable and populate UI elements
                lblName.Text = dataTable.Rows[0]["Name"].ToString();
                lblPrice.Text = dataTable.Rows[0]["price"].ToString();
                lblSize.Text = dataTable.Rows[0]["Size"].ToString();
                lblDescription.Text = dataTable.Rows[0]["Description"].ToString();
                imgProduct.ImageUrl = dataTable.Rows[0]["imagePath"].ToString();

                // Set the background color of the btnColor element using the color from the DataTable
                btnColor.Style.Add(HtmlTextWriterStyle.BackgroundColor, dataTable.Rows[0]["color"].ToString());
            }

            // Close the database connection
            connection.Close();

        }

        // Event handler for a button click or similar action to redirect the user to the "Home.aspx" page
        protected void _home(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


        protected void _add_cart(object sender, EventArgs e)
        {
            // Retrieve the list of cart items from the session
            List<clsCart> cartItem = (List<clsCart>)Session["cartItems"];

            // Create a new instance of the clsCart class to represent a cart item
            clsCart cartClassitem = new clsCart();

            // Populate the cart item instance with data from the UI elements and calculations
            cartClassitem.name = lblName.Text;
            cartClassitem.price = lblPrice.Text;
            cartClassitem.quantity = txtQuantity.Text;
            cartClassitem.image = imgProduct.ImageUrl;
            cartClassitem.total = double.Parse(lblPrice.Text) * double.Parse(txtQuantity.Text);
            cartClassitem.Id = cartItem.Count + 1;

            // Add the cart item instance to the existing list of cart items
            cartItem.Add(cartClassitem);

            // Update the session variable "cartItems" with the modified list of cart items
            Session["cartItems"] = cartItem;

            // Reset the quantity input field to a default value of "1"
            txtQuantity.Text = "1";

        }
    }
}