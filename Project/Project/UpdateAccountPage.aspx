<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="UpdateAccountPage.aspx.cs" Inherits="UpdateAccountPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="width: 100px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="firstNameLabel" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="firstNameTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter First Name!!!" ControlToValidate="firstNameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="lastNameLabel" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lastNameTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Last Name!!!" ControlToValidate="lastNameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="mobileLabel" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="mobileNoTxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="unameLabel" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="unameTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName!!!" ControlToValidate="unameTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="pwdLabel" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pwdTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Password!!!" ControlToValidate="pwdTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">&nbsp;</td>
            <td>
                <asp:Button ID="update1Btn" runat="server" Text="Update" OnClick="update1Btn_Click" />
                &nbsp;<asp:Button ID="cancelBtn" runat="server" Text="Back" OnClick="backBtn_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

