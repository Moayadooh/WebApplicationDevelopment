<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Customer Name :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the name"></asp:RequiredFieldValidator>
            <br />
            Amount Paid :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Amount shuld be between 1000 - 2000" MaximumValue="2000" MinimumValue="1000" Type="Integer"></asp:RangeValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Amounts should be same!!!" Type="Integer"></asp:CompareValidator>
            <br />
            Total Amount : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Amount shuld be less than 2000" Operator="LessThan" Type="Integer" ValueToCompare="2000"></asp:CompareValidator>
            <br />
            Email :  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Email!!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
