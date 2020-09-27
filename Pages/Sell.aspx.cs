using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

namespace InventoryM.Pages
{
    public partial class Sell : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["username"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            Label9.Text = "Hi you are awsome," + Session["username"];
            TextBox6.Text = Session["username"].ToString();
            if (!Page.IsPostBack)
            {
                if (ViewState["Records"]==null) {

                    dt.Columns.Add("ID ");
                    dt.Columns.Add("Comp. Name");
                    dt.Columns.Add("Name");
                    dt.Columns.Add("Qty");
                    dt.Columns.Add("Unit Price");
                    dt.Columns.Add("Total Price");
                    dt.Columns.Add("Inv. ID");               
                    ViewState["Records"] = dt;
                }
            }
            SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryWebDatabse"].ToString());

            try
            {
                if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
                string querry = "SELECT sell_price FROM products WHERE name=@name ";
                SqlCommand sqlCmd = new SqlCommand(querry, sqlCon);

                sqlCmd.Parameters.AddWithValue("@name", DropDownList3.Text);
                string price = sqlCmd.ExecuteScalar().ToString();

                TextBox2.Text = price;

                sqlCon.Close();
            }
            catch { }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(DropDownList7.Text, DropDownList5.Text, DropDownList3.Text, TextBox1.Text, TextBox2.Text, (Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(TextBox2.Text)).ToString(), TextBox9.Text);
            GridView2.DataSource = dt;
            GridView2.DataBind();
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
            string querry = "insert into cust_inv ([customer_id], [customer_name], [total_ammount], [recieve_ammount], [due], [created_date], [created_by], [dv_name]) values(@customer_id,@customer_name,@total_ammount,@recieve_ammount,@due,@created_date,@created_by,@dv_name)";

            try
            {
                sqlCon.Open();

                using (SqlCommand cmd = new SqlCommand(querry, sqlCon))
                {
                    // Create and set the parameters values 
                   
                    cmd.Parameters.Add("@customer_id", SqlDbType.NVarChar).Value = DropDownList6.Text;
                    cmd.Parameters.Add("@customer_name", SqlDbType.NVarChar).Value = DropDownList1.Text;
                    cmd.Parameters.Add("@total_ammount", SqlDbType.NVarChar).Value = TextBox4.Text;
                    cmd.Parameters.Add("@recieve_ammount", SqlDbType.NVarChar).Value = TextBox5.Text;
                    //int num1 = Convert.ToInt32(TextBox4.Text);
                    //int num2 = Convert.ToInt32(TextBox5.Text);
                    //int due = num1 - num2;
                    cmd.Parameters.Add("@due", SqlDbType.NVarChar).Value = (Convert.ToInt32(TextBox4.Text) - Convert.ToInt32(TextBox5.Text)).ToString();
                    cmd.Parameters.Add("@created_date", SqlDbType.NVarChar).Value = DateTime.Today;
                    cmd.Parameters.Add("@created_by", SqlDbType.NVarChar).Value = TextBox6.Text;
                    cmd.Parameters.Add("@dv_name", SqlDbType.NVarChar).Value = DropDownList2.Text;



                    // Let's ask the db to execute the query
                    int rowsAdded = cmd.ExecuteNonQuery();
                  
                        // Well this should never really happen
                        

                }
               
               
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
              
                
                GridView1.DataBind();

                sqlCon.Close();
            }
            catch { }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e) 
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList6.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        Int32 tot = 0;

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot = tot + Convert.ToInt32(e.Row.Cells[5].Text);
                lblSum.Text = "Grand Total: "+tot.ToString()+" Taka Only";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource9";
        }

        protected void SqlDataSource6_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource6";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource10";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource11";
        }
    }
}