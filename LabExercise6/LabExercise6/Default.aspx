<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            First Name :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter First Name!!!"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="CustomValidator1" ControlToValidate="TextBox1" ErrorMessage="should not be more than 8 charactars!!!" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            Last Name : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name!!!"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="CustomValidator2" ControlToValidate="TextBox2" ErrorMessage="should not be more than 8 charactars!!" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            <br />
            Password : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Confirm Password :
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="both password must be same!!!"></asp:CompareValidator>
            <br />
            Age :
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Age must be between 25-40" MaximumValue="40" MinimumValue="25" Type="Integer"></asp:RangeValidator>
            <br />
            Husband Income : <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            Wife Income :
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            Total Income :
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Total Income should not exceed 10,000 RO" Operator="LessThan" Type="Integer" ValueToCompare="10000"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
