<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fun2.aspx.cs" Inherits="fun2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Income (June) :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Income (July) :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Total Income :
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
