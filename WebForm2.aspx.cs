using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Configuration;
using System.Web.Script.Serialization;
namespace ProjectAspDotNet
{
    public partial class WebForm2 : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            head.InnerText = "WELCOME MR " + Session["userName"].ToString(); //this will assign username in the head id of webform2.aspx from the session id
        }
        [WebMethod]
        protected void AddAccountant(object sender, EventArgs e) //this function is to add accountant
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source=CMDLHRDB01;Initial Catalog=4149_Sameer_Murtaza;Persist Security Info=True;User ID=sa;Password=CureMD2022; "))
            {
                sqlCon.Open();
                var sql = " INSERT INTO MyAccountants(accountant_name, accountant_password) VALUES (@accountant_name, @accountant_password)";
                using(var cmd=new SqlCommand(sql,sqlCon))
                {
                    cmd.Parameters.AddWithValue("@accountant_name", value1.Text);
                    cmd.Parameters.AddWithValue("@accountant_password", value2.Text);
                   cmd.ExecuteNonQuery();
                }
                sqlCon.Close();
            }

        }
        protected void AddCustomer(object sender, EventArgs e) //this function is for add customer
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source=CMDLHRDB01;Initial Catalog=4149_Sameer_Murtaza;Persist Security Info=True;User ID=sa;Password=CureMD2022; "))
            {
                sqlCon.Open();
                var sql = " INSERT INTO MyCustomers(customer_name, customer_id, customer_contact) VALUES (@customer_name, @customer_id, @customer_contact)";
                using (var cmd = new SqlCommand(sql, sqlCon))
                {
                    cmd.Parameters.AddWithValue("@customer_name", value3.Text);
                    cmd.Parameters.AddWithValue("@customer_id", value4.Text);
                    cmd.Parameters.AddWithValue("@customer_contact", value5.Text);
                    cmd.ExecuteNonQuery();
                }
                sqlCon.Close();
            }

        }
        protected void AddProduct(object sender, EventArgs e) //this function is for add product
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source=CMDLHRDB01;Initial Catalog=4149_Sameer_Murtaza;Persist Security Info=True;User ID=sa;Password=CureMD2022; "))
            {
                sqlCon.Open();
                var sql = " INSERT INTO MyProducts(product_name, price, product_id) VALUES (@product_name, @price, @product_id)";
                using (var cmd = new SqlCommand(sql, sqlCon))
                {
                    cmd.Parameters.AddWithValue("@product_name", value6.Text);
                    cmd.Parameters.AddWithValue("@price", value7.Text);
                    cmd.Parameters.AddWithValue("@product_id", value8.Text);
                    cmd.ExecuteNonQuery();
                }
                sqlCon.Close();
            }

        }
        protected void ViewAccountant(object sender, EventArgs e) //redirect to customer view
        {
            Response.Redirect("WebForm5.aspx");
        }
        protected void ViewCustomers(object sender, EventArgs e) //redirect to customer view
        {
            Response.Redirect("WebForm3.aspx");
        }
        protected void ViewProduct(object sender, EventArgs e) //redirect to product view
        {
            Response.Redirect("WebForm4.aspx");
        }
    }
}