using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lab5 : System.Web.UI.Page
{

    String TheName(TextBox t)
    {
        return "Your name is "+t.Text;
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = TheName(TextBox1);
    }
}