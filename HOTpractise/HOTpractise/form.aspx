<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function fun1() {
            var dis = document.getElementById("Calendar1");
            dis.style.display = "block";
        }
        function fun2() {
            var dis = document.getElementById("Calendar2");
            dis.style.display = "block";
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 234px;
        }
        .auto-style4 {
            height: 26px;
            width: 234px;
        }
        .auto-style5 {
            width: 173px;
        }
        .auto-style6 {
            height: 26px;
            width: 173px;
        }
        #Calendar1
        {
            display:none;
        }
        #Calendar2
        {
            display:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Type of Customer :</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Returning Customer</asp:ListItem>
                            <asp:ListItem>New Customer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Hotel :</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Tulib</asp:ListItem>
                            <asp:ListItem>Seeb</asp:ListItem>
                            <asp:ListItem>Naseem</asp:ListItem>
                            <asp:ListItem>Raeda</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Check-in-date :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Image ID="Image1" src="pic.png" Height="25" Width="25" onclick="fun1()" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Check-out-date :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Image ID="Image2" src="pic.png" Height="25" Width="25" onclick="fun2()" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Number of day\night :</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Number of adults :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Number of Children :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Number of Room :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Rate Before Discount (RM) :</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Rate (RM) :</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </form>
</body>
</html>
