using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace reg
{
    public partial class regform : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(con);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "sp_insert";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id",TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@ph", TextBox5.Text.Trim());
                cmd.Connection = conn;
                conn.Open();
                int n = cmd.ExecuteNonQuery();
                if(n > 0)
                {
                    Label7.ForeColor = System.Drawing.Color.Green;
                    Label7.Text = "submitted sucessfully";
                }
                else
                {
                   
                    Label7.Text = "not submitted";
                }
            }
            catch(Exception ex) 
            {
                Label7.Text = ex.Message;
            }
        }
    }
}