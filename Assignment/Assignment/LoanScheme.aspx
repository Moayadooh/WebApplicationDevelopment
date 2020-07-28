<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoanScheme.aspx.cs" Inherits="LoanSheme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style13 {
            width: 414px;
            top: auto;
        }
        .auto-style17 {
            height: 39px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        .auto-style19 {
            height: 26px;
            width: 405px;
        }
        .auto-style20 {
            width: 405px;
        }
        .auto-style21 {
            width: 405px;
            height: 39px;
        }
        .auto-style25 {
            height: 26px;
            width: 414px;
        }
        .auto-style26 {
            width: 414px;
        }
        .auto-style27 {
            width: 414px;
            height: 39px;
        }
        .auto-style28 {
            height: 26px;
            width: 399px;
        }
        .auto-style29 {
            width: 399px;
        }
        .auto-style30 {
            width: 399px;
            height: 39px;
        }
        .style7
        {
            height: 26px;
            width: 344px;
        }
        .style8
        {
            width: 344px;
        }
        .style9
        {
            width: 344px;
            height: 39px;
        }
        .style13
        {
            width: 353px;
            top: auto;
        }
        .style14
        {
            height: 26px;
            width: 353px;
        }
        .style15
        {
            width: 353px;
        }
        .style16
        {
            width: 353px;
            height: 39px;
        }
        .style17
        {
            height: 26px;
            width: 343px;
        }
        .style18
        {
            width: 343px;
        }
        .style19
        {
            width: 343px;
            height: 39px;
        }
        #Image1,#Image2,#Image3,#Image4
        {
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="4" style="color: #FF0000; font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;NEW LOAN SCHEME</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="style14" style="color: #00CC00">Features &amp; Benefits</td>
                    <td class="style7"></td>
                    <td class="style17"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" src="financing.jpeg" Height="100" Width="100" ImageAlign="Middle" runat="server" />
                    </td>
                    <td class="style8">
                        &nbsp;&nbsp;
                        <asp:Image ID="Image2" src="fee.jpeg" Height="100" Width="100" runat="server" />
                    </td>
                    <td class="style18">
                        <asp:Image ID="Image3" src="Home.png" Height="100" Width="100" runat="server" CssClass="auto-style18" />
                    </td>
                    <td>
                        <asp:Image ID="Image4" src="student.jpg" Height="100" Width="100" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style16">High Margin of financing</td>
                    <td class="style9">No processing fee</td>
                    <td class="style19">Loan tenure</td>
                    <td class="auto-style17">Take-over of Education Loans</td>
                </tr>
                <tr>
                    <td style="color: #808080; clip: rect(100px, auto, auto, auto);" 
                        class="style13">Up to 100%</td>
                    <td style="color: #808080" class="style8"></td>
                    <td style="color: #808080" class="style18">Enjoy loan tenure up to 35 years<br />
                        but customer&#39;s age should not<br />
                        exceed 65 years at the end of<br />
                        financing period</td>
                    <td style="color: #808080">With Bank Muscat you can switch your existing high 
                        cost Education Loan to Bank Muscat and reduce your monthly EMIs. Loan amount 
                        upto Rs. 1.5 Crores</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td style="color: #00CC00" class="style15">Additional Features</td>
                    <td class="style8">&nbsp;</td>
                    <td class="style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <td colspan="4" style="color: #808080">Prevailing Interest Rate and Default Clause. Please <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF0066">click here</asp:HyperLink>
&nbsp;for more information</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
