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
        rtLabel.Text = cal().ToString();
    }
    float cal()
    {
        
        Boolean eligible;
        if (customersList.SelectedItem.Value == "1")
        {
            eligible = true;
        }
        else
        {
            eligible = false;
        }
        float price;
        if (hotelsList.SelectedItem.Value == "1")
        {
            price = 150.0f;
        }
        else if (hotelsList.SelectedItem.Value == "2")
        {
            price = 250.0f;
        }
        else if (hotelsList.SelectedItem.Value == "3")
        {
            price = 200.0f;
        }
        else
        {
            price = 400.0f;
        }
        float totalPrice, discount;
        int nofRooms = Convert.ToInt16(roomText.Text);
        totalPrice = nofRooms * price;
        rbdLabel.Text = totalPrice.ToString();
        if (eligible)
        {
            discount = totalPrice * 0.25f;
            totalPrice = totalPrice - discount;
            return totalPrice;

        }
        else
        {
            return totalPrice;
        }
    }
}