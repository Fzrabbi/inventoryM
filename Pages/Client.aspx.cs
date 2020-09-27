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
    public partial class Client : System.Web.UI.Page
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
            string querry = "insert into customer ([customer_name], [customer_address], [customer_phone], [customer_contact_person], [customer_balance], [area_name]) values(@cname,@caddress,@cphone,@ccontact_person,@cbalance,@carea_name)";

            try
            {
                sqlCon.Open();

                using (SqlCommand cmd = new SqlCommand(querry, sqlCon))
                {
                    // Create and set the parameters values 
                    cmd.Parameters.Add("@cname", SqlDbType.NVarChar).Value = TextBox1.Text;
                    cmd.Parameters.Add("@cbalance", SqlDbType.NVarChar).Value = TextBox2.Text;
                    cmd.Parameters.Add("@carea_name", SqlDbType.NVarChar).Value = DropDownList1.Text;
                    cmd.Parameters.Add("@caddress", SqlDbType.NVarChar).Value = TextBox3.Text;
                    cmd.Parameters.Add("@cphone", SqlDbType.NVarChar).Value = TextBox5.Text;
                    cmd.Parameters.Add("@ccontact_person", SqlDbType.NVarChar).Value = TextBox6.Text;

                    // Let's ask the db to execute the query
                    int rowsAdded = cmd.ExecuteNonQuery();
                  
                        // Well this should never really happen
                        

                }
                TextBox1.Text="";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";

                GridView1.DataBind();

                sqlCon.Close();
            }
            catch { }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(
            ConfigurationManager.ConnectionStrings["InventoryWebDatabse"].ToString());
            string querry = "insert into area ([name]) values(@aname)";

            try
            {
                sqlCon.Open();

                using (SqlCommand cmd = new SqlCommand(querry, sqlCon))
                {
                    // Create and set the parameters values 
                    cmd.Parameters.Add("@aname", SqlDbType.NVarChar).Value = TextBox4.Text;

                    // Let's ask the db to execute the query
                    int rowsAdded = cmd.ExecuteNonQuery();

                    // Well this should never really happen


                }
                TextBox4.Text = "";
                GridView2.DataBind();
                DropDownList1.DataBind();

                sqlCon.Close();
            }
            catch { }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}