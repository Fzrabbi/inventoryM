using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace InventoryM
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   

        protected void ButtonSubmit_Click1(object sender, EventArgs e)
        {

            SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryWebDatabse"].ToString());

            try
            {
                if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
                string querry = "SELECT COUNT(1) FROM admin WHERE name=@name AND pass=@pass";
                SqlCommand sqlCmd = new SqlCommand(querry, sqlCon);
                
                sqlCmd.Parameters.AddWithValue("@name", txtUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@pass", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = txtUserName.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                    
                }
                
                else
                {
                    invalid.Visible = true;
                }
                sqlCon.Close();
            }
            catch { }
            
                
                
              

            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

   
    }
}