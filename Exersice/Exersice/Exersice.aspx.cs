using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exersice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(TextBox5.Text) && !String.IsNullOrEmpty(TextBox6.Text))
        {
            if(Check(TextBox5, TextBox6)!=null)
                TextBox6.Text = Check(TextBox5, TextBox6);
        }
    }
    String Check(TextBox students, TextBox rooms)
    {
        int NoofStudents = Convert.ToInt16(students.Text);
        int NoofRooms = Convert.ToInt16(rooms.Text);
        if (NoofStudents == 1 || NoofStudents == 2)
        {
            return "1";
        }
        else if (NoofStudents == 3 || NoofStudents == 4)
        {
            return "2";
        }
        return null;
    }
}