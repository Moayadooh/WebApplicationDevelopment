<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="BookTripPage.aspx.cs" Inherits="BookTripPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function displayCalendar() {
            var dis = document.getElementById("hideCalendar");
            dis.style.display = "block";
        }
    </script>
    <style type="text/css">
        #hideCalendar
        {
            display:none;
            position:absolute;
            background-color:white;
        }
        .auto-style10 {
            direction: ltr;
            width: 207px;
        }
        .auto-style11 {
            width: 207px;
        }
        .auto-style12 {
            height: 26px;
            width: 207px;
        }
        .auto-style13 {
            width: 148px;
        }
        .auto-style14 {
            height: 26px;
            width: 148px;
        }
        .auto-style15 {
            text-align: center;
            color: #000000;
        }
        .auto-style16 {
            width: 874px;
        }
    </style>
    <table class="auto-style1">
        <tr>
            <td colspan="3">
                <h3 class="auto-style15">BOOK TRIP</h3>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <strong>
                <asp:Label ID="welcomeLabel" runat="server" Text="Welcome"></asp:Label>
                </strong>
                </td>
            <td>

                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="logoutLnkBtn_Click">Logout</asp:LinkButton>

            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <strong>Note:</strong> Click <strong>Display</strong> button to display your pre-booked trips.</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="tripDateLabel" runat="server" Text="Trip Date"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="tripDateTxt" runat="server"></asp:TextBox>
                <asp:Image ID="Image5" runat="server" src="calendar.png" Height="25" Width="25" onClick="displayCalendar()" />
            </td>
            <td class="auto-style16">
                <div id="hideCalendar">
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Pick up Date!!!" ControlToValidate="tripDateTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="noofHoursLabel" runat="server" Text="No of Hours"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:DropDownList ID="noofHoursList" runat="server">
                    <asp:ListItem>30 Minutes</asp:ListItem>
                    <asp:ListItem>1 Hours</asp:ListItem>
                    <asp:ListItem>2 Hours</asp:ListItem>
                    <asp:ListItem>3 Hours</asp:ListItem>
                    <asp:ListItem>4 Hours</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="pickUpTimeLabel" runat="server" Text="Pick up Time"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="pickUpTimeList" runat="server">
                    <asp:ListItem>08:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>05:00 PM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="noofPassengersLabel" runat="server" Text="No of Passengers"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="noofPassengerTxt" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter No of Passengers!!!" ControlToValidate="noofPassengerTxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="pickupLocationLabel" runat="server" Text="Pick up Location"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:DropDownList ID="pickUpLocationList" runat="server">
                    <asp:ListItem>Muscat</asp:ListItem>
                    <asp:ListItem>Barka</asp:ListItem>
                    <asp:ListItem>Sohar</asp:ListItem>
                    <asp:ListItem>Al musna</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="dropoffLocationLabel" runat="server" Text="Drop off Location"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:DropDownList ID="dropofLocationList" runat="server">
                    <asp:ListItem>Dubai</asp:ListItem>
                    <asp:ListItem>Al restaq</asp:ListItem>
                    <asp:ListItem>Al swaqe</asp:ListItem>
                    <asp:ListItem>Al khabora</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="nextBtn" runat="server" Text="Next" OnClick="nextBtn_Click" Width="56px" />
            &nbsp;<asp:Button ID="resetBtn" runat="server" OnClick="resetBtn_Click" Text="Reset" CausesValidation="False" Width="53px" />
            &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="displayBtn" runat="server" CausesValidation="False" OnClick="displayBtn_Click" Text="Display" Width="114px" />
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <br />
                            <asp:Label ID="registredTripLabel" runat="server"></asp:Label>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="PickUpData" HeaderText="Trip Date" />
                                    <asp:BoundField DataField="NoofHours" HeaderText="No of Hours" />
                                    <asp:BoundField DataField="PickUpTime" HeaderText="Pick Up Time" />
                                    <asp:BoundField DataField="NoOfPassenger" HeaderText="No of Passengers" />
                                    <asp:BoundField DataField="PickUpLocation" HeaderText="Pick Up Location" />
                                    <asp:BoundField DataField="DropOffLocation" HeaderText="Drop of Location" />
                                    <asp:BoundField DataField="PaidFees" HeaderText="Paid fees" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                    &nbsp;</td>
        </tr>
    </table>
</asp:Content>

