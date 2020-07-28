using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class BookAndUpdateTripPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["insertDataCustId"] != null)
        {
            if(!IsPostBack)
                updateInsertBtn.Text = "Ok";
        }
        else if (Session["updateDataCustId"] != null)
        {
            if (!IsPostBack)
            {
                updateInsertBtn.Text = "Update";

                con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
                string str = Session["updateDataCustId"].ToString();
                int ID = Convert.ToInt16(str);

                da = new SqlDataAdapter("Select * from UsersData where Id = @value", con);
                da.SelectCommand.Parameters.AddWithValue("@value", ID);
                dt = new DataTable();
                da.Fill(dt);

                tripDateTxt.Text = dt.Rows[0][2].ToString();

                if (dt.Rows[0][3].ToString() == "30 Minutes")
                    hoursList.SelectedIndex = 0;
                else if (dt.Rows[0][3].ToString() == "1 Hours")
                    hoursList.SelectedIndex = 1;
                else if (dt.Rows[0][3].ToString() == "2 Hours")
                    hoursList.SelectedIndex = 2;
                else if (dt.Rows[0][3].ToString() == "3 Hours")
                    hoursList.SelectedIndex = 3;
                else
                    hoursList.SelectedIndex = 4;

                if (dt.Rows[0][4].ToString() == "08:00 AM")
                    pickUpTimeList.SelectedIndex = 0;
                else if (dt.Rows[0][4].ToString() == "12:00 PM")
                    pickUpTimeList.SelectedIndex = 1;
                else
                    pickUpTimeList.SelectedIndex = 2;

                passengerTxt.Text = dt.Rows[0][5].ToString();

                if (dt.Rows[0][6].ToString() == "Muscat")
                    pickLocationList.SelectedIndex = 0;
                else if (dt.Rows[0][6].ToString() == "Barka")
                    pickLocationList.SelectedIndex = 1;
                else if (dt.Rows[0][6].ToString() == "Sohar")
                    pickLocationList.SelectedIndex = 2;
                else
                    pickLocationList.SelectedIndex = 3;

                if (dt.Rows[0][7].ToString() == "Dubai")
                    dropLocationList.SelectedIndex = 0;
                else if (dt.Rows[0][7].ToString() == "Al restaq")
                    dropLocationList.SelectedIndex = 1;
                else if (dt.Rows[0][7].ToString() == "Al swaqe")
                    dropLocationList.SelectedIndex = 2;
                else
                    dropLocationList.SelectedIndex = 3;
            }
        }
        else
            Response.Redirect("LoginPage.aspx");
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\Register.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        tripDateTxt.Text = Calendar1.SelectedDate.ToString("d");
    }
    
    protected void updateInsertBtn_Click(object sender, EventArgs e)
    {
        string str;
        int ID;
        if (updateInsertBtn.Text == "Update")
        {
            str = Session["updateDataCustId"].ToString();
            ID = Convert.ToInt16(str);
            da = new SqlDataAdapter("Update UsersData Set PickUpData='" + tripDateTxt.Text + "',NoofHours='" + hoursList.SelectedItem.Text + "',PickUpTime='" + pickUpTimeList.SelectedItem.Text + "',NoOfPassenger='" + passengerTxt.Text + "',PickUpLocation='" + pickLocationList.SelectedItem.Text + "',DropOffLocation='" + dropLocationList.SelectedItem.Text + "' where Id = @value", con);
        } 
        else
        {
            str = Session["insertDataCustId"].ToString();
            ID = Convert.ToInt16(str);
            da = new SqlDataAdapter("Insert Into UsersData (CustomerId,PickUpData,NoofHours,PickUpTime,NoOfPassenger,PickUpLocation,DropOffLocation) Values ('" + ID + "','" + tripDateTxt.Text + "','" + hoursList.SelectedItem.Text + "','" + pickUpTimeList.SelectedItem.Text + "','" + passengerTxt.Text + "','" + pickLocationList.SelectedItem.Text + "','" + dropLocationList.SelectedItem.Text + "')", con);
        }
        da.SelectCommand.Parameters.AddWithValue("@value", ID);
        dt = new DataTable();
        da.Fill(dt);

        if (updateInsertBtn.Text == "Update")
            Response.Write("<script>alert('Booked-Trip Updated Successfully');</script>");
        else
            Response.Write("<script>alert('Trip Successfully Booked');</script>");
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}