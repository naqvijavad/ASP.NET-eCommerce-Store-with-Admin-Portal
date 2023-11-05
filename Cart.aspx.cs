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
using ThePerfumeStore.models;

namespace ThePerfumeStore
{
    public partial class Cart : System.Web.UI.Page
    {
        // Declare a variable to store the total cost of items in the order
        double total;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the cart items stored in the session
            var cartItems = Session["cartItems"] as List<clsCart>;

            // Check if the user is not logged in, and if so, redirect to the login page
            if (String.IsNullOrEmpty(Session["username"] as String))
            {
                Response.Redirect("Login.aspx");
            }

            // Check if the page is not being loaded in a postback
            if (!IsPostBack)
            {
                // Bind the cart items to a Repeater control for display
                Repeater1.DataSource = cartItems;
                Repeater1.DataBind();

                try
                {
                    // Calculate the total cost of all items in the cart using LINQ and update the "total" variable
                    total = cartItems.Sum(x => Convert.ToDouble(x.total));
                }
                catch
                {
                    // If there's an exception during the calculation, set the total to 0
                    total = 0;
                }

                // Display the calculated total cost in a label
                lblFinalTotal.Text = total.ToString();
            }

        }

        protected void _remove(object sender, EventArgs e)
        {

            // Reference the Repeater Item that contains the Button triggering this event
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            // Reference the HiddenField within the Repeater Item to get the index of the item to remove
            int ind = int.Parse((item.FindControl("HiddenField1") as HiddenField).Value);

            // Retrieve the list of cart items from the session
            var cartItems = Session["cartItems"] as List<clsCart>;

            try
            {
                // Remove the cart item at the specified index from the list
                cartItems.RemoveAt(ind - 1);

                // Update the session variable "cartItems" with the modified list of cart items
                Session["cartItems"] = cartItems;
            }
            catch
            {
                // If there's an exception during the removal (e.g., index out of range),
                // set the session variable "cartItems" to an empty list
                Session["cartItems"] = new List<clsCart>();
            }

            // Redirect the user to the "Cart.aspx" page after updating the cart
            Response.Redirect("Cart.aspx");

        }

        protected void _checkout(object sender, EventArgs e)
        {
            // Redirect the user to the "Checkout.aspx" page for the checkout process
            Response.Redirect("Checkout.aspx");

        }
    }
}