using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTwoNumber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        int num1 = Convert.ToInt16(text1.Text);
        int num2 = Convert.ToInt16(text2.Text);

        int result = num1 + num2;

        Label2.Text = result.ToString();
    }
}