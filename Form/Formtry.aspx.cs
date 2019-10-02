using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Formtry
{
    public partial class Formtry : System.Web.UI.Page
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application.Add("Usercount", 0);
        }
            protected void Page_Load(object sender, EventArgs e)
        {

            Registeredr.Text = "Register User: " + Application["Usercount"];//.ToString();
        }

        protected void btnSubmit_click(object sender, EventArgs e)

        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["FisrtName"] = FirstName.Text; //set Firstname session variable
            Session["LastName"] = Lastname.Text; //set LastNAme Session Variable

            int ucount = (int)Application["Usercount"];
            ucount++;
            Application["Usercount"] = ucount;

            Response.Redirect("~/Welcome1.aspx"); //go to welcome
        }
    }
}