using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moaya\Documents\DataBase1.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnDelete.Enabled = false;
            FillGridView();
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        clear();
    }
    public void clear()
    {
        HiddenField1.Value = "";
        txtName.Text = txtMobile.Text = txtAddress.Text = "";
        lblSuccesssMessage.Text = lblErrorMessage.Text = "";
        btnSave.Text = "Save";
        btnDelete.Enabled = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlCommand sqlCmd = new SqlCommand("ContactCreateOrUpdate",sqlCon);
        sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@ContactID", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
        sqlCmd.Parameters.AddWithValue("@Name",txtName.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
        sqlCmd.ExecuteNonQuery();
        String contactID = HiddenField1.Value;
        clear();
        if (contactID == "")
            lblSuccesssMessage.Text = "Saved Successfully";
        else
            lblSuccesssMessage.Text = "Updated Successfully";
        FillGridView();

    }
    void FillGridView()
    {
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewAll",sqlCon);
        sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        sqlCon.Close();
        GridView1.DataSource = dtbl;
        GridView1.DataBind();
    }

    protected void lnk_OnClick(object sender, EventArgs e)
    {
        int contactID = Convert.ToInt32((sender as LinkButton).CommandArgument);
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewByID", sqlCon);
        sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
        sqlDa.SelectCommand.Parameters.AddWithValue("@ContactID", contactID);
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        sqlCon.Close();
        HiddenField1.Value = contactID.ToString();
        txtName.Text = dtbl.Rows[0]["Name"].ToString();
        txtMobile.Text = dtbl.Rows[0]["Mobile"].ToString();
        txtAddress.Text = dtbl.Rows[0]["Address"].ToString();
        btnSave.Text = "Update";
        btnDelete.Enabled = true;

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlCommand sqlCmd = new SqlCommand("ContactDeleteByID", sqlCon);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@ContactID", Convert.ToInt32(HiddenField1.Value));
        sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        clear();
        FillGridView();
        lblSuccesssMessage.Text = "Deleted Successfully";
    }
}