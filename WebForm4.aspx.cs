using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using System.Configuration;
using System.Web.Script.Serialization;

namespace ProjectAspDotNet
{
    public class serial3
    {

        public static string JsonConverter(DataTable table)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in table.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in table.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            return jsSerializer.Serialize(parentRow);
        }
    }
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        protected static string GetProduct()
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source=CMDLHRDB01;Initial Catalog=4149_Sameer_Murtaza;Persist Security Info=True;User ID=sa;Password=CureMD2022; "))
            {
                sqlCon.Open();
                string query = "SELECT * FROM MyPoducts";
                SqlDataAdapter SDA = new SqlDataAdapter(query, sqlCon);
                DataTable dt = new DataTable();
                SDA.Fill(dt);
                sqlCon.Close();
                return serial3.JsonConverter(dt);
            }
        }
    }
}