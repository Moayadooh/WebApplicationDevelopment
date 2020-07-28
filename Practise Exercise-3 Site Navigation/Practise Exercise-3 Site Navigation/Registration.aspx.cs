using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Name"] = TextBox1.Text;
        Session["Mobile"] = TextBox2.Text;
        Session["Nationality"] = DropDownList1.SelectedItem.Text;

        Image1.ImageUrl = "Image/" + FileUpload1.PostedFile.FileName;
        FileUpload1.SaveAs(Server.MapPath(Image1.ImageUrl.ToString()));

        Session["Image"] = Image1.ImageUrl;

        Response.Redirect("ViewRegistration.aspx");
    }
}