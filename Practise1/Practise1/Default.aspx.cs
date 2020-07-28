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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Double price;
        if (DropDownList1.SelectedItem.Value == "1")
        {
            price = 10;
        }
        else if (DropDownList1.SelectedItem.Value == "2")
        {
            price = 4;
        }
        else if (DropDownList1.SelectedItem.Value == "3")
        {
            price = 3;
        }
        else if (DropDownList1.SelectedItem.Value == "4")
        {
            price = 4;
        }
        else
        {
            price = 24.2;
        }
        int cuantity = Convert.ToInt16(TextBox2.Text);
        Label1.Text = price.ToString();
        ViewState["Val"] = func(price, cuantity).ToString("0.00");
        Label2.Text = ViewState["Val"].ToString();
    }
    Double func(Double price,int cuantity)
    {
        Double originalPrice = cuantity * price;
        Double tax = originalPrice * 0.06D;
        Double totalPrice = originalPrice + tax;
        return totalPrice;
    }
}