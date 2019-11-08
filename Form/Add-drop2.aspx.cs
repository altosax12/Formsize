using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Form
{
     class Product
    {
        private string name;
        float price;

        public string Name { get => name; set => name = value; }
        public float Price { get => price; set => price = value; }

        public Product(string name, float price)
        {
            this.name = name;
            this.price = price;
        }
    }

    

    public partial class Add_drop2 : System.Web.UI.Page
    {
        List<Product> cart;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product prod;
           if ("btn1" == sender.ToString())
            {
                 prod = new Product("Product 1", 100);
                 
               
            }
            else 
            if ("btn2" == sender.ToString())
            {
                
                prod = new Product("Product 2", 100);
            }

        }

        private void AddToCart(Product prod)
        {
            cart.Add(prod);
        }
    }
}