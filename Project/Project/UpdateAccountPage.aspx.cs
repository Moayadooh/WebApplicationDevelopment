using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateAccountPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
            Response.Redirect("LoginPage.aspx");
        if (!IsPostBack)
        {
            String str = Session["ID"].ToString();
            int ID = Convert.ToInt16(str);
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
            da = new SqlDataAdapter("Select * from Register where Id = @value", con);
            da.SelectCommand.Parameters.AddWithValue("@value", ID);
            dt = new DataTable();
            da.Fill(dt);
            firstNameTxt.Text = dt.Rows[0][1].ToString();
            lastNameTxt.Text = dt.Rows[0][2].ToString();
            mobileNoTxt.Text = dt.Rows[0][3].ToString();
            unameTxt.Text = dt.Rows[0][4].ToString();
            emailTxt.Text = dt.Rows[0][5].ToString();
            pwdTxt.Text = dt.Rows[0][6].ToString();
        }
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
    }

    protected void update1Btn_Click(object sender, EventArgs e)
    {
        string str = Session["ID"].ToString();
        int ID = Convert.ToInt16(str);
        da = new SqlDataAdapter("Update Register Set FirstName = '"+firstNameTxt.Text+ "', LastName = '" + lastNameTxt.Text + "', MobileNo = '" + mobileNoTxt.Text + "', UserName = '" + unameTxt.Text + "', Email = '"+emailTxt.Text+"', Password = '" + pwdTxt.Text + "' where Id = @value", con);
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);
        Response.Write("<script>alert('Account Updated Successfully');</script>");
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}