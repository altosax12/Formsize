using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using System.Data.Odbc;
using System.Data.OleDb;


namespace Form
{

    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = "data source = .; database = Form; intergrated security = SSP!";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = cs;
            try
            {
                SqlCommand cmd = new SqlCommand("select * from product", con);
                con.Open();
                GridView12.DataSource = cmd.ExecuteReader();
                GridView12.DataBind();

            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }
    }
}