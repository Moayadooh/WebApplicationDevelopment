<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 136px;
        }
        .style5
        {
            width: 136px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .auto-style1 {
            width: 147px;
        }
        .auto-style2 {
            width: 147px;
            height: 26px;
        }
        .style7
        {
            width: 147px;
            height: 22px;
        }
        .style8
        {
            width: 136px;
            height: 22px;
        }
        .style9
        {
            height: 22px;
        }
        .auto-style6 {
            color: #0000CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        <br />
        <table class="style1">
            <tr>
                <td colspan="3" style="font-size: medium">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="auto-style6">
                    <strong>BANK BARKA</strong></span></td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: medium">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: medium">
        <asp:Image ID="Image1" runat="server" src="barka.jpg" Width="500" Height="250" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: medium">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: medium">
        <asp:Label ID="nameLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: medium">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: medium">
        <asp:Label ID="eligibleLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: medium">
                    </td>
                <td class="style5" style="font-size: medium">
                    </td>
                <td style="font-size: medium; font-weight: bold;" class="style6">
                    Status</td>
            </tr>
            <tr>
                <td class="style7" style="font-size: medium">
                    Name :</td>
                <td class="style8" style="font-size: medium">
                    <asp:TextBox ID="nameText" runat="server"></asp:TextBox>
                </td>
                <td class="style9" style="font-size: medium">
                    <asp:Label ID="LabelName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size: medium">
                    Nationality :</td>
                <td class="style3" style="font-size: medium">
                    <asp:DropDownList ID="nationalityList" runat="server">
                        <asp:ListItem>Omani</asp:ListItem>
                        <asp:ListItem>Saudi</asp:ListItem>
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>American</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="font-size: medium">
                    <asp:Label ID="LabelNationality" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size: medium">
                    Age :</td>
                <td class="style3" style="font-size: medium">
                    <asp:TextBox ID="AgeText" runat="server"></asp:TextBox>
                </td>
                <td style="font-size: medium">
                    <asp:Label ID="LabelAge" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: medium">
                    Maritial Status :</td>
                <td class="style5" style="font-size: medium">
                    <asp:DropDownList ID="maritialList" runat="server">
                        <asp:ListItem>unmarried</asp:ListItem>
                        <asp:ListItem>married</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="font-size: medium" class="style6">
                    <asp:Label ID="LabelMaritial" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: medium">
                    Mother Income :</td>
                <td class="style5" style="font-size: medium">
                    <asp:TextBox ID="motherText" runat="server"></asp:TextBox>
                </td>
                <td class="style6" style="font-size: medium">
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size: medium">
                    Father Income :</td>
                <td class="style3" style="font-size: medium">
                    <asp:TextBox ID="fatherText" runat="server"></asp:TextBox>
                </td>
                <td style="font-size: medium">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size: medium">
                    Total Income :</td>
                <td class="style3" style="font-size: medium">
                    <asp:TextBox ID="totalText" runat="server"></asp:TextBox>
                </td>
                <td style="font-size: medium">
                    <asp:Label ID="LabelTotal" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size: medium">
                    Account Holder :</td>
                <td class="style3" style="font-size: medium">
                    <asp:DropDownList ID="accountList" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="font-size: medium">
                    <asp:Label ID="LabelAccount" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size: medium">
                    File Attachment :</td>
                <td class="style3" style="font-size: medium">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td style="font-size: medium">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="errorLabel" runat="server"></asp:Label>
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" CausesValidation="False" />
    </form>
</body>
</html>
