using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;   
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack) {
            Calendar1.Visible = false;
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
{
    
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Asp project\\Touriest\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    
        SqlCommand cmd = new SqlCommand("insert into enquiry(traveldate,destination,duration,nooftravelers,Accomdation,requirement,otherservice,name,city,email,mobile) values(@traveldate,@destination,@duration,@nooftravelers,@Accomdation,@requirement,@otherservice,@name,@city,@email,@mobile)", con);
       cmd.Parameters.AddWithValue("@traveldate", TextBox1.Text);
        cmd.Parameters.AddWithValue("@destination", destination.Text);
        cmd.Parameters.AddWithValue("@duration", DropDownduration.Text);
        cmd.Parameters.AddWithValue("@nooftravelers", DropDownperson.Text);
        cmd.Parameters.AddWithValue("@accomdation",DropDownList2.Text);
        cmd.Parameters.AddWithValue("@requirement", TextBoxrequirement.Text);
        cmd.Parameters.AddWithValue("@otherservice", CheckBoxservice.Text);
        cmd.Parameters.AddWithValue("@name", TextBoxname.Text);
        cmd.Parameters.AddWithValue("@city", TextBoxcity.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBoxphno.Text);
        cmd.Parameters.AddWithValue("@email", TextBoxemail.Text);

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
    }
   
    protected void LinkButton1_click(object sender, EventArgs e)
    {
        
        
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {

        TextBox1.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar1.Visible = false;
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }
}