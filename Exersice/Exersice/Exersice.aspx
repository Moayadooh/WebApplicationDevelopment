<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exersice.aspx.cs" Inherits="Exersice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form<br />
            <br />
            Student Name :&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            First Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Last Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            No of Students :
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            No of Rooms :&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
        </div>
    </form>
</body>
</html>
