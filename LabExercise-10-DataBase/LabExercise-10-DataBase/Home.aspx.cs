using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\moaya\\Documents\\Registration.mdf;Integrated Security=True;Connect Timeout=30";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("INSERT INTO Users (Name,Email) VALUES (@value1,@value2)", conn);
        cmd.Parameters.AddWithValue("@value1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@value2", TextBox2.Text);
        int i = cmd.ExecuteNonQuery();

        if (i == 1)
            Response.Write("<script>alert('Data inserted successfully');</script>");
        else
            Response.Write("<script>alert('Data not inserted!!!');</script>");
        conn.Close();
    }

    protected void DeleteBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("DELETE FROM Users WHERE Name='" + TextBox1.Text + "'", conn);
        int i = cmd.ExecuteNonQuery();

        if (i == 1)
            Response.Write("<script>alert('Data deleted successfully');</script>");
        else
            Response.Write("<script>alert('Data not deleted!!!');</script>");
        conn.Close();
    }

    protected void UpdateBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("UPDATE Users SET Email='" + TextBox2.Text + "' WHERE Name='" + TextBox1.Text + "'", conn);

        int i = cmd.ExecuteNonQuery();

        if (i == 1)
            Response.Write("<script>alert('Data updated successfully');</script>");
        else
            Response.Write("<script>alert('Data not updated!!!');</script>");
        conn.Close();
    }

    protected void ViewBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        da = new SqlDataAdapter("SELECT * FROM Users",conn);
        dt = new DataTable();
        da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();

        conn.Close();
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        conn.Open();
        da = new SqlDataAdapter("SELECT * FROM Users WHERE (Name='"+TextBox1.Text+"')", conn);
        dt = new DataTable();
        da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();

        conn.Close();

        //To display fetched data in text box
        //TextBox1.Text = dt.Rows[0][0].ToString();
        //TextBox2.Text = dt.Rows[0][1].ToString();
    }
}