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

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length>8)
            args.IsValid = false;
        else
            args.IsValid = true;

    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length > 8)
            args.IsValid = false;
        else
            args.IsValid = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox8.Text = fun().ToString();
    }
    int fun()
    {
        int husIncome = Convert.ToInt32(TextBox6.Text);
        int wifeIncome = Convert.ToInt32(TextBox7.Text);
        int totalIncome = husIncome + wifeIncome;
        return totalIncome;
    }
}