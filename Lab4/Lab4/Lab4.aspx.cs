using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lab4 : System.Web.UI.Page
{

    int cal(int val1,int val2)
    {
        return (val1 + val2);
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int val1 = Convert.ToInt16(TextBox1.Text);
        int val2 = Convert.ToInt16(TextBox2.Text);

        int result = cal(val1,val2);

        Label1.Text = result.ToString();

    }
}