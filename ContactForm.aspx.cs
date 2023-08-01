using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services.Description;

namespace WebForms
{
    public partial class ContactForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mwasif\source\repos\WebForms\App_Data\SampleDetails.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string gender = string.Empty;
            if (RadioMale.Checked)
            {
                gender = "M";
            }
            else
            {
                gender = "F";
            }


            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Details values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+gender+"')";
            cmd.ExecuteNonQuery();
            Label1.Text = "'Record is Saved Successfully'";
            con.Close();
            Response.Redirect("ContactForm.aspx");
        }

    }
}