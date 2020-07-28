using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class LoginPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (normalUserRbtn.Checked)
        {
            con.Open();
            cmd = new SqlCommand("SELECT * FROM Register WHERE(UserName = '" + unameTxt.Text + "' And Password = '" + pwdTxt.Text + "')", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["CustomerID"] = dr[0].ToString();
                Session["Welcome"] = dr[1].ToString()+" "+ dr[2].ToString();
                con.Close();
                Response.Redirect("BookTripPage.aspx");
            }  
            else
                Response.Write("<script>alert('Wrong UserName or Password');</script>");
            con.Close();
        }
        else
        {
            if (unameTxt.Text == "admin" && pwdTxt.Text == "admin")
            {
                Session["Admin"] = "Admin";
                con.Close();
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong UserName or Password');</script>");
            }
        }
    }

    protected void resetBtn_Click(object sender, EventArgs e)
    {
        unameTxt.Text = null;
        pwdTxt.Text = null;
    }
}