using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BMI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        Double val1 = Convert.ToDouble(text1.Text);
        Double val2 = Convert.ToDouble(text2.Text);

        Double BMI = val1 / (val2 * val2);

        l2.Text = BMI.ToString();
    }
}