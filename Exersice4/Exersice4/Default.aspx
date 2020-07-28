<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Customers :
            <asp:DropDownList ID="customersList" runat="server">
                <asp:ListItem Text="Returning Customer" Value="1" />
                <asp:ListItem Text="New Customer" Value="2" />
            </asp:DropDownList>
            <br />
            Hotels :
            <asp:DropDownList ID="hotelsList" runat="server">
                <asp:ListItem Text="Tulip" Value="1" />
                <asp:ListItem Text="Seeb" Value="2" />
                <asp:ListItem Text="Naseem" Value="3" />
                <asp:ListItem Text="Raeda" Value="4" />
            </asp:DropDownList>
            <br />
            Number of Room :
            <asp:TextBox ID="roomText" runat="server"></asp:TextBox>
            <br />
            Rate Before Discount(RBD) :
            <asp:Label ID="rbdLabel" runat="server" Text=""></asp:Label>
            <br />
            Rate(RT) :
            <asp:Label ID="rtLabel" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
