using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["var"] = "This is ViewState Variable";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Uname"] = TextBox1.Text;
        Response.Redirect("Home.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = ViewState["var"].ToString();;
    }
}