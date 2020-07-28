using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class BookTripPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CustomerID"] == null)
            Response.Redirect("LoginPage.aspx");

        welcomeLabel.Text = "Welcome "+Session["Welcome"].ToString();
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        tripDateTxt.Text = Calendar1.SelectedDate.ToString("d");
    }

    protected void nextBtn_Click(object sender, EventArgs e)
    {
        Session["TripData"] = tripDateTxt.Text;
        Session["NoofHours"] = noofHoursList.SelectedItem.Text;
        Session["PickUpTime"] = pickUpTimeList.SelectedItem.Text;
        Session["NoOfPassenger"] = noofPassengerTxt.Text;
        Session["PickUpLocation"] = pickUpLocationList.SelectedItem.Text;
        Session["DropOfLocation"] = dropofLocationList.SelectedItem.Text;
        Session["amount"] = cal().ToString();
        Response.Redirect("PaymentPage.aspx");
    }
    float cal()
    {
        float price;
        if (noofHoursList.SelectedIndex == 0)
            price = 50.0f;
        else if (noofHoursList.SelectedIndex == 1)
            price = 75.0f;
        else if (noofHoursList.SelectedIndex == 2)
            price = 100.0f;
        else if (noofHoursList.SelectedIndex == 3)
            price = 125.0f;
        else
            price = 150.0f;

        return price;
    }

    protected void displayBtn_Click(object sender, EventArgs e)
    {
        String id = Session["CustomerID"].ToString();
        cmd = new SqlCommand("SELECT * FROM UsersData WHERE CustomerId = '"+id+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            dr.Close();
            da = new SqlDataAdapter("Select * from UsersData Where CustomerId = '" + id + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            registredTripLabel.Text = "Your pre-booked trips";
        }
        else
            registredTripLabel.Text = "You have no pre-booked trips";


    }

    protected void logoutLnkBtn_Click(object sender, EventArgs e)
    {
        con.Close();
        Response.Redirect("LoginPage.aspx");
    }

    protected void resetBtn_Click(object sender, EventArgs e)
    {
        tripDateTxt.Text = null;
        noofPassengerTxt.Text = null;
    }
}