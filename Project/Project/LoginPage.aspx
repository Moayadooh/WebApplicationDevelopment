<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tbody style="direction: ltr">
        <tr>
            <td colspan="2">
                <h3 class="auto-style9" style="color: #000000">LOGIN</h3>
                <p class="auto-style9" style="color: #000000">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td style="width: 161px; height: 26px;"></td>
            <td style="height: 26px; width: 170px;">
                <asp:RadioButton ID="normalUserRbtn" runat="server" Text="Customer" GroupName="typeOfUser" Checked="True" />
                <asp:RadioButton ID="adminRbtn" runat="server" Text="Admin" GroupName="typeOfUser" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px"><asp:Label ID="unameLabel" runat="server" Text="UserName"></asp:Label></td>
            <td style="width: 170px">
                <asp:TextBox ID="unameTxt" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName!!!" ControlToValidate="unameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px"><asp:Label ID="pwd1Label" runat="server" Text="Password"></asp:Label></td>
            <td style="width: 170px">
                <asp:TextBox ID="pwdTxt" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password!!!" ControlToValidate="pwdTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 170px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="77px" />
            &nbsp;<asp:Button ID="resetBtn" runat="server" CausesValidation="False" OnClick="resetBtn_Click" Text="Reset" Width="75px" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="2">
                Don&#39;t&nbsp; have an account?
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUpPage.aspx">Sign up</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>