<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 140px;
        }
        .auto-style3 {
            width: 174px;
        }
        .auto-style4 {
            width: 196px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter The Name!!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nationality :</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Malaysian</asp:ListItem>
                            <asp:ListItem>Omani</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Only for Malaysian!!" ValueToCompare="Malaysian"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Must be between 25-40 years!!" MaximumValue="40" MinimumValue="25" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Maritial Status :</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Unmarried</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Only for married!!" ValueToCompare="Married"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Income :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must not exceed 10,000 OMR" Operator="LessThanEqual" Type="Integer" ValueToCompare="10000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Account :</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Must have account!!" ValueToCompare="Yes"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
