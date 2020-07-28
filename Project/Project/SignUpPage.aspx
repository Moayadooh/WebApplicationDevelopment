<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="SignUpPage.aspx.cs" Inherits="SignUpPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <h3 class="auto-style9" style="color: #000000">SIGN UP</h3>
                <p class="auto-style9" style="color: #000000">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                <asp:Label ID="firstNameLabel" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style8" style="width: 175px">
                <asp:TextBox ID="firstNameTxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter First Name!!!" ControlToValidate="firstNameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                <asp:Label ID="lastNameLabel" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style8" style="width: 175px">
                <asp:TextBox ID="lastNameTxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Last Name!!!" ControlToValidate="lastNameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                <asp:Label ID="mobileLabel" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td class="auto-style8" style="width: 175px">
                <asp:TextBox ID="mobileNoTxt" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px"><asp:Label ID="unameLabel" runat="server" Text="UserName"></asp:Label></td>
            <td class="auto-style8" style="width: 175px">
                <asp:TextBox ID="unameTxt" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName!!!" ControlToValidate="unameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px"><asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label></td>
            <td class="auto-style8" style="width: 175px">
                <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px; height: 29px;"><asp:Label ID="pwd1Label" runat="server" Text="Password"></asp:Label></td>
            <td class="auto-style8" style="width: 175px; height: 29px;">
                <asp:TextBox ID="pwd1Txt" runat="server"></asp:TextBox>
                <br />
            </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Password!!!" ControlToValidate="pwd1Txt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px"><asp:Label ID="pwd2Label" runat="server" Text="Confirm Password"></asp:Label></td>
            <td class="auto-style8" style="width: 175px">
                <asp:TextBox ID="pwd2Txt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd2Txt" ControlToValidate="pwd1Txt" ErrorMessage="The Two Password Doesn't Match!!!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td class="auto-style8" style="width: 175px">
                <asp:Button ID="Button1" runat="server" OnClick="signupBtn_Click" Text="Sign up" Width="78px" />
            &nbsp;<asp:Button ID="resetBtn" runat="server" Text="Reset" CausesValidation="False" OnClick="resetBtn_Click" Width="75px" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="2">
                Already have an account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
            </td>
        </tr>
    </table>
    
</asp:Content>

