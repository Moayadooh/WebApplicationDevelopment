using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUpPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
    }

    protected void signupBtn_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Insert Into Register (FirstName,LastName,MobileNo,UserName,Email,Password) Values (@value1,@value2,@value3,@value4,@value5,@value6)", con);
        cmd.Parameters.AddWithValue("@value1", firstNameTxt.Text);
        cmd.Parameters.AddWithValue("@value2", lastNameTxt.Text);
        cmd.Parameters.AddWithValue("@value3", mobileNoTxt.Text);
        cmd.Parameters.AddWithValue("@value4", unameTxt.Text);
        cmd.Parameters.AddWithValue("@value5", emailTxt.Text);
        cmd.Parameters.AddWithValue("@value6", pwd1Txt.Text);
        int i = cmd.ExecuteNonQuery();

        if (i == 1)
            Response.Write("<script>alert('Account Successfully Created');</script>");
        else
            Response.Write("<script>alert('Failed to Connect to Database!!!');</script>");
        con.Close();
    }

    protected void resetBtn_Click(object sender, EventArgs e)
    {
        firstNameTxt.Text = null;
        lastNameTxt.Text = null;
        mobileNoTxt.Text = null;
        unameTxt.Text = null;
        emailTxt.Text = null;
        pwd1Txt.Text = null;
        pwd2Txt.Text = null;
    }
}