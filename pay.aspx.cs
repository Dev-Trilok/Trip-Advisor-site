using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class pay : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Asp project\\Touriest\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

    SqlCommand cmd = new SqlCommand("insert into payonline(fname,lname,number,email,tourname) values(@fname,@lname,@number,@email,@tourname)", con);
        cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@number",TextBox3.Text);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@tourname", TextBox5.Text);
       
       

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        string msgstring = "Your ENQUIRY details have been Submitted";
        string contant = "window.onload=function(){ alert('";
        contant += msgstring;
        contant += "');";
        contant += "window.location='";
        contant += Request.Url.AbsoluteUri;
        contant += "';}";
        ClientScript.RegisterStartupScript(this.GetType(), "SucessMessage", contant, true);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
}