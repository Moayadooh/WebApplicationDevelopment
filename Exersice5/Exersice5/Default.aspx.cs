using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime start = DateTime.Parse(indateText.Text);
        DateTime end = DateTime.Parse(outdateText.Text);
        TimeSpan diff = end - start;
        Double day = diff.TotalDays;
        Double night = day - 1;

        Label5.Text = day.ToString() + " day(s)";
        Label6.Text = night.ToString() + " night(s)";
        inLabel.Text = indateText.Text;
        outLabel.Text = outdateText.Text;
        customerLabel.Text = customerList.SelectedItem.Text;
        hotelLabel.Text = hotelList.SelectedItem.Text;
        adultsLabel.Text = adultsText.Text;
        childrenLabel.Text = childrenText.Text;

        if (adultsText.Text == "1" || adultsText.Text == "2")
            roomsLabel.Text = "1";
        else
            roomsLabel.Text = "2";

        float day1 = Convert.ToByte(day);
        rtLabel.Text = cal(day1).ToString();
    }
    float cal(float day)
    {
        Boolean isElegible;
        if (customerList.SelectedItem.Text == "Returning Customer")
            isElegible = true;
        else
            isElegible = false;

        float price;
        if (hotelList.SelectedItem.Text == "Tulib")
            price = 150.0f;
        else if (hotelList.SelectedItem.Text == "Seeb")
            price = 250.0f;
        else if (hotelList.SelectedItem.Text == "Naseem")
            price = 200.0f;
        else
            price = 400.0f;

        float totalPrice, discount,GST,RBD;
        int noofRooms = Convert.ToInt16(roomsLabel.Text);
        if (isElegible)
        {
            totalPrice = price * noofRooms;
            totalPrice = totalPrice * day;
            discount = totalPrice * 0.25f;
            GST = totalPrice * 0.06f;
            RBD = totalPrice + GST;
            totalPrice = totalPrice - discount + GST;
            rbdLabel.Text = RBD.ToString();
            return totalPrice;
        }
        else
        {
            totalPrice = price * noofRooms;
            totalPrice = totalPrice * day;
            GST = totalPrice * 0.06f;
            totalPrice = totalPrice + GST;
            rbdLabel.Text = "No Discount";
            return totalPrice;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        indateText.Text = Calendar1.SelectedDate.ToString("d");
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        outdateText.Text = Calendar2.SelectedDate.ToString("d");
    }
}