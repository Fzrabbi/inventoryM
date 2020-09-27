using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace InventoryM.Pages
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (Session["username"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            Label9.Text = "Hi you are awsome," + Session["username"];
        }

        protected void ButtonLogOut_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(
            ConfigurationManager.ConnectionStrings["InventoryWebDatabse"].ToString());
            string querry = "insert into companys ([companyName]) values(@cname)";

            try
            {
                sqlCon.Open();

                using (SqlCommand cmd = new SqlCommand(querry, sqlCon))
                {
                    // Create and set the parameters values 
                    
                   
                    cmd.Parameters.Add("@cname", SqlDbType.NVarChar).Value = TextBox3.Text;



                    // Let's ask the db to execute the query
                    int rowsAdded = cmd.ExecuteNonQuery();
                  
                        // Well this should never really happen
                        

                }
        
                TextBox3.Text = "";             
                GridView1.DataBind();

                sqlCon.Close();
            }
            catch { }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}