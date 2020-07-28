<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="PaymentPage.aspx.cs" Inherits="PaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <h3 class="auto-style9" style="color: #000000">PAYMENT</h3>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <asp:Label ID="amountLabel" runat="server"></asp:Label>
                </strong></td>
            <td>

                <asp:LinkButton ID="logoutLnkBtn" runat="server" CausesValidation="False" OnClick="logoutLnkBtn_Click">Logout</asp:LinkButton>

            </td>
        </tr>
        <tr>
            <td style="width: 134px">
                &nbsp;</td>
            <td style="width: 1217px">
                &nbsp;</td>
            <td>

                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:Label ID="cardLabel" runat="server" Text="Credit Card No"></asp:Label>
            </td>
            <td style="width: 1217px">
                <asp:TextBox ID="creditCardTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Credit Card No!!!" ControlToValidate="creditCardTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:Label ID="pinLabel" runat="server" Text="PIN"></asp:Label>
            </td>
            <td style="width: 1217px">
                <asp:TextBox ID="pinTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter PIN!!!" ControlToValidate="pinTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td style="width: 1217px">
                <asp:Button ID="submitbtn" runat="server" Text="Pay" OnClick="paybtn_Click" Width="47px" />
                &nbsp;<asp:Button ID="resetBtn" runat="server" OnClick="resetBtn_Click" Text="Reset" Width="48px" />
&nbsp;<asp:Button ID="backBtn" runat="server" Text="Back" OnClick="backBtn_Click" CausesValidation="False" Width="51px" />
            </td>
        </tr>
    </table>
</asp:Content>

