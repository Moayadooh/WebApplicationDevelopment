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

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        entryText.Text = Calendar1.SelectedDate.ToString("d");
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        exitText.Text = Calendar2.SelectedDate.ToString("d");
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        DateTime startDate = DateTime.Parse(entryText.Text);
        DateTime endDate = DateTime.Parse(exitText.Text);

        TimeSpan diff = endDate - startDate;

        double days = diff.TotalDays;
        double nights = days - 1;

        daysText.Text = days.ToString();
        nightsText.Text = nights.ToString();
    }
}