using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nameText.Text = nameText.Text.ToUpper();

        String name = nameText.Text;
        nameLabel.Text = "Dear " + name + " for your application";

        totalText.Text = cal().ToString();

        if (FileUpload1.HasFile)
        {
            try
            {

                FileUpload1.SaveAs(Server.MapPath("Folder\\" + FileUpload1.FileName + ".doc"));

            }
            catch (Exception ex)
            {
                errorLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
        int age = Convert.ToInt16(AgeText.Text);
        int totalIncome = Convert.ToInt16(totalText.Text);
        int count = 0;

        if (nameText.Text == "")
            LabelName.Text = "Not fulfill the requirement";
        else
        {
            LabelName.Text = "Fulfill the requirement";
            count++;
        }
        if (nationalityList.SelectedIndex == 0)
        {
            LabelNationality.Text = "Fulfill the requirement";
            count++;
        }
        else
            LabelNationality.Text = "Not fulfill the requirement";
        if (maritialList.SelectedIndex == 0)
        {
            LabelMaritial.Text = "Fulfill the requirement";
            count++;
        }
        else
            LabelMaritial.Text = "Not fulfill the requirement";
        if (totalIncome <= 10000)
        {
            LabelTotal.Text = "Fulfill the requirement";
            count++;
        }
        else
            LabelTotal.Text = "Not fulfill the requirement";
        if (age < 15 || age > 30)
        {
            Response.Write("<script>alert('Invalid Input');</script>");
            LabelAge.Text = "Not fulfill the requirement";
        }
        else
        {
            LabelAge.Text = "Fulfill the requirement";
            count++;
        }
        if (accountList.SelectedIndex == 1)
        {
            Response.Redirect("Register.aspx");
            LabelAccount.Text = "Not fulfill the requirement";
        }
        else
        {
            LabelAccount.Text = "Fulfill the requirement";
            count++;
        }

        if (count == 6)
        {
            eligibleLabel.Text = "Based on your information, you are eligible for this scheme. Summary of your application is as follows:";
            Response.Write("<script>window.open('LoanScheme.aspx');</script>");
        }
        else
        {
            eligibleLabel.Text = "Based on your information, you are NOT eligible for this scheme. Summary of your application is as follows:";
        }
    }
    int cal()
    {
        int fatherIncome = Convert.ToInt16(fatherText.Text);
        int motherIncome = Convert.ToInt16(motherText.Text);
        int totalIncome = fatherIncome + motherIncome;
        return totalIncome;
    }
}