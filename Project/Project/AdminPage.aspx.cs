using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("LoginPage.aspx");
        else
            welcomeLabel.Text = "Welcome " + Session["Admin"].ToString();
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
    }

    protected void viewBtn_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("Select * From Register", con);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void searchBtn_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("Select * From Register where UserName = '" + unameIDTxt.Text+ "'", con);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void lnkViewPreBookedTripsBtn(Object Sender,EventArgs e)
    {
        int ID = Convert.ToInt16((Sender as LinkButton).CommandArgument);
        da = new SqlDataAdapter("Select * from UsersData where CustomerId = @value", con);
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();

        da = new SqlDataAdapter("Select * from Register where Id = @value", con);
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);
        custNameLabel.Text = "Pre-Booked Trips of " + "<strong>'" + dt.Rows[0][4].ToString() + "'</strong>";
    }
    
    protected void lnkDeleteAccountsBtn(Object Sender, EventArgs e)
    {
        int ID = Convert.ToInt16((Sender as LinkButton).CommandArgument);

        da = new SqlDataAdapter("Delete from UsersData where CustomerId = @value", con);
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);

        da = new SqlDataAdapter("Delete from Register where Id = @value", con);
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Response.Write("<script>alert('Account Deleted Successfully');</script>");
    }
    
    protected void lnkEditAccountsBtn(Object Sender, EventArgs e)
    {
        int ID = Convert.ToInt16((Sender as LinkButton).CommandArgument);
        Session["ID"] = ID;
        Response.Redirect("UpdateAccountPage.aspx");
    }

    protected void lnkDeleteDataBtn(Object Sender, EventArgs e)
    {
        int ID = Convert.ToInt16((Sender as LinkButton).CommandArgument);
        da = new SqlDataAdapter("Delete from UsersData where Id = @value", con);
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        Response.Write("<script>alert('Booked-Trip Deleted Successfully');</script>");
    }
    
    protected void lnkEditDataBtn(Object Sender, EventArgs e)
    {
        int ID = Convert.ToInt16((Sender as LinkButton).CommandArgument);
        Session["updateDataCustId"] = ID;
        Session["insertDataCustId"] = null;
        Response.Redirect("BookAndUpdateTripPage.aspx");
    }
    
    protected void lnkBookTripBtn(object sender, EventArgs e)
    {
        int ID = Convert.ToInt16((sender as LinkButton).CommandArgument);
        Session["insertDataCustId"] = ID;
        Session["updateDataCustId"] = null;
        Response.Redirect("BookAndUpdateTripPage.aspx");
    }

    protected void logoutLnkBtn_Click(object sender, EventArgs e)
    {
        con.Close();
        Response.Redirect("LoginPage.aspx");
    }
}