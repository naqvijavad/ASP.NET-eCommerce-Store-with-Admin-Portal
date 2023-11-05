// Student Name
// Krushangi Patel (8859466)
// Parv Isotiya (8856428)
// Bhavika Patel (8826226)
// Javad Naqvi (8841544)

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThePerfumeStore.models
{
    // A class representing items in a shopping cart
    public class clsCart
    {
        // Property to store the unique ID of the item
        public int Id { get; set; }

        // Property to store the name of the item
        public String name { get; set; }

        // Property to store the price of the item (as a string)
        public String price { get; set; }

        // Property to store the quantity of the item
        public string quantity { get; set; }

        // Property to store the image URL of the item
        public string image { get; set; }

        // Property to store the total cost of the item (price * quantity)
        public double total { get; set; }
    }

}