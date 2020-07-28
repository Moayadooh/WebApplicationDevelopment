using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString("d");
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Calendar2.SelectedDate.ToString("d");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime start = DateTime.Parse(TextBox3.Text);
        DateTime end = DateTime.Parse(TextBox4.Text);
        TimeSpan diff = end - start;
        Double days = diff.TotalDays;
        Double nights = days - 1;
        Label1.Text = days.ToString() + " day(s)";
        Label2.Text = nights.ToString() + " night(s)";
        if (TextBox5.Text == "1" || TextBox5.Text == "2")
            TextBox7.Text = "1";
        else
            TextBox7.Text = "2";
        int day = Convert.ToInt16(days);
        Label4.Text = cal(day).ToString();
    }
    float cal(int day)
    {
        Boolean isElegible;
        if (DropDownList1.SelectedIndex == 0)
            isElegible = true;
        else
            isElegible = false;
        float price;
        if (DropDownList2.SelectedIndex == 0)
            price = 150.0f;
        else if (DropDownList2.SelectedIndex == 1)
            price = 250.0f;
        else if (DropDownList2.SelectedIndex == 2)
            price = 200.0f;
        else
            price = 400.0f;
        int NoofRooms = Convert.ToInt16(TextBox7.Text);
        float totalPrice = price * NoofRooms * day;
        if (isElegible == true)
        {
            Label3.Text = totalPrice.ToString();
            float discountPrice = totalPrice * 0.25f;
            totalPrice = totalPrice - discountPrice;
            return totalPrice;
        }
        else
        {
            Label3.Text = "No Discount";
            return totalPrice;
        }
    }
}