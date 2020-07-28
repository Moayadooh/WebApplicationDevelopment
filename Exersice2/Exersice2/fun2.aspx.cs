using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fun2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = fun(TextBox1, TextBox2);
    }
    String fun(TextBox june, TextBox july)
    {
        int JuneIncome = Convert.ToInt32(june.Text);
        int JulyIncome = Convert.ToInt32(july.Text);
        int TotalIncome = JuneIncome + JulyIncome;
        if (TotalIncome < 1000)
        {
            return "Elegible";
        }
        else if (TotalIncome > 1000)
        {
            return "Not Eligible";
        }
        return null;
    }
}