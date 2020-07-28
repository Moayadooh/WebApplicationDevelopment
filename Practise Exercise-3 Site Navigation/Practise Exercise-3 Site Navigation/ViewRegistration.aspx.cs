using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Name"].ToString();
        Label2.Text = Session["Mobile"].ToString();
        Label3.Text = Session["Nationality"].ToString();

        if (Session["Image"] != null)
            Image1.ImageUrl = Session["Image"].ToString();
    }
}