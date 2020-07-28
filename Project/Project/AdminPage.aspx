<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style11 {
        text-align: center;
        color: #000000;
    }
        .auto-style15 {
            height: 29px;
            width: 1370px;
        }
        .auto-style18 {
            width: 1370px;
        }
        .auto-style19 {
            height: 29px;
            width: 1370px;
            text-align: justify;
        }
        </style>
    <table class="auto-style1">
        <tr>
            <td class="auto-style18">
                <h3 class="auto-style11">ADMINISTRATOR</h3>
                <p class="auto-style9">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <strong>
                <asp:Label ID="welcomeLabel" runat="server"></asp:Label>
                </strong></td>
            <td>
                <asp:LinkButton ID="logoutLnkBtn" runat="server" OnClick="logoutLnkBtn_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;<strong> Note:</strong> Enter customer UserName and click <strong>Search</strong> button to search for his\here account or click <strong>View</strong> button&nbsp; to display all users accounts.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                &nbsp;
                <asp:TextBox ID="unameIDTxt" runat="server"></asp:TextBox>
            &nbsp;<asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" />
            &nbsp;<asp:Button ID="viewBtn" runat="server" Text="View" OnClick="viewBtn_Click" Width="56px" Height="24px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="1075px">
                            <Columns>
                                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                                <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                                <asp:BoundField DataField="UserName" HeaderText="UserName" />
                                <asp:BoundField DataField="Email" HeaderText="E-mail" />
                                <asp:BoundField DataField="Password" HeaderText="Password" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="lnkViewPreBookedTripsBtn">View Pre-Booked Trips</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="lnkDeleteAccountsBtn">Delete Account</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="lnkEditAccountsBtn">Edit Account</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="lnkBookTripBtn">Book a Trip</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />
                        <asp:Label ID="custNameLabel" runat="server"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" Width="1089px">
                            <Columns>
                                <asp:BoundField DataField="PickUpData" HeaderText="Trip Date" />
                                <asp:BoundField DataField="NoofHours" HeaderText="No of Hours" />
                                <asp:BoundField DataField="PickUpTime" HeaderText="Pick Up Time" />
                                <asp:BoundField DataField="NoOfPassenger" HeaderText="No of Passengers" />
                                <asp:BoundField DataField="PickUpLocation" HeaderText="Pick Up Location" />
                                <asp:BoundField DataField="DropOffLocation" HeaderText="Drop of Location" />
                                <asp:BoundField DataField="PaidFees" HeaderText="Paid fees" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="lnkDeleteDataBtn">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="lnkEditDataBtn">Edit</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                <br />
            </td>
        </tr>
        </table>
</asp:Content>

