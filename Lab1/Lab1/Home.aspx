<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Enter your name :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="btn1" runat="server" Text="Click" OnClick="btn1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>