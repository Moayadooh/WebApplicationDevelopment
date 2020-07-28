using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PaymentPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["amount"] == null)
            Response.Redirect("LoginPage.aspx");
        amountLabel.Text = "Total Amount is " + Session["amount"].ToString()+" OMR";
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
    }

    protected void paybtn_Click(object sender, EventArgs e)
    {
        String id = Session["CustomerID"].ToString();
        String tripData = Session["TripData"].ToString();
        String noofHours = Session["NoofHours"].ToString();
        String pickUpTime = Session["PickUpTime"].ToString();
        String noOfPassenger = Session["NoOfPassenger"].ToString();
        String pickUpLocation = Session["PickUpLocation"].ToString();
        String dropOfLocation = Session["DropOfLocation"].ToString();
        String paidFees = Session["amount"].ToString()+" OMR";
        String creditCard = creditCardTxt.Text;

        cmd = new SqlCommand("Insert Into UsersData (CustomerId,PickUpData,NoofHours,PickUpTime,NoOfPassenger,PickUpLocation,DropOffLocation,CreditCardNo,PaidFees) Values (@value1,@value2,@value3,@value4,@value5,@value6,@value7,@value8,@value9)", con);
        cmd.Parameters.AddWithValue("@value1", id);
        cmd.Parameters.AddWithValue("@value2", tripData);
        cmd.Parameters.AddWithValue("@value3", noofHours);
        cmd.Parameters.AddWithValue("@value4", pickUpTime);
        cmd.Parameters.AddWithValue("@value5", noOfPassenger);
        cmd.Parameters.AddWithValue("@value6", pickUpLocation);
        cmd.Parameters.AddWithValue("@value7", dropOfLocation);
        cmd.Parameters.AddWithValue("@value8", creditCard);
        cmd.Parameters.AddWithValue("@value9", paidFees);
        int i = cmd.ExecuteNonQuery();

        if (i == 1)
            Response.Write("<script>alert('Payment Successful');</script>");
        else
            Response.Write("<script>alert('Failed to Connect to Database!!!');</script>");
        con.Close();
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookTripPage.aspx");
    }

    protected void logoutLnkBtn_Click(object sender, EventArgs e)
    {
        con.Close();
        Response.Redirect("LoginPage.aspx");
    }

    protected void resetBtn_Click(object sender, EventArgs e)
    {
        creditCardTxt.Text = null;
        pinTxt.Text = null;
    }
}