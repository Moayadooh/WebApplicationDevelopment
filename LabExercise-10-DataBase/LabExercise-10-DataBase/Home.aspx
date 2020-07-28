<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 70px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            direction: ltr;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style4">
                    <br />
        <asp:Button ID="InsertBtn" runat="server" Text="Insert" OnClick="Button1_Click" />
        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" OnClick="DeleteBtn_Click" />
        <asp:Button ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" />
                    <br />
                    <br />
        <asp:Button ID="ViewBtn" runat="server" Text="View" Width="77px" OnClick="ViewBtn_Click"/>
                    &nbsp;
                    <asp:Button ID="SearchBtn" runat="server" CssClass="auto-style3" Text="Search" Width="82px" OnClick="SearchBtn_Click" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    &nbsp;
        &nbsp;
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
    </form>
</body>
</html>
