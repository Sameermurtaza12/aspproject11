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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        protected void Login(object sender, EventArgs e) // this is my login function
        {   
            using (SqlConnection sqlCon= new SqlConnection("Data Source=CMDLHRDB01;Initial Catalog=4149_Sameer_Murtaza;Persist Security Info=True;User ID=sa;Password=CureMD2022; "))
            {
                sqlCon.Open();
                string query = "SELECT * FROM MyAdmins WHERE admin_name=@admin_name AND admin_password=@admin_password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@admin_name", value1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@admin_password", value2.Text.Trim());
                SqlDataReader Data = sqlCmd.ExecuteReader();
              
                if(Data.Read())
                {
                    Session["userName"] = value1.Text.Trim(); //saving name in session
                    Session["password"] = value2.Text.Trim(); //saving password in session
                    Response.Redirect("WebForm2.aspx"); //opening new page to display data 

                }
                else
                {                 
                        Response.Redirect("WebForm1.aspx");
                }
                sqlCon.Close();
            }

        
         
        }
    }
}