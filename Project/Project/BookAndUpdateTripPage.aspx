<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="BookAndUpdateTripPage.aspx.cs" Inherits="BookAndUpdateTripPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function displayCalendar(){
            var dis = document.getElementById("Calendar");
            dis.style.display = "block";
        }
    </script>
    <style type="text/css">
        #Calendar
        {
            display:none;
            position:absolute;
        }
        .auto-style10 {
            width: 200px;
        }
        .auto-style11 {
            width: 164px;
        }
        .auto-style12 {
            width: 164px;
            height: 29px;
        }
        .auto-style13 {
            width: 200px;
            height: 29px;
        }
        .auto-style14 {
            height: 29px;
        }
    </style>
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="dateLabel" runat="server" Text="Trip Date"></asp:Label>
            </td>
            
            
            <td class="auto-style13">
                <asp:TextBox ID="tripDateTxt" runat="server"></asp:TextBox>
                <asp:Image ID="Image5" runat="server" src="calendar.png" Height="25" Width="25" OnClick="displayCalendar()" />
            </td>
            <td class="auto-style14">
                <div id="Calendar">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Pick up Date!!!" ControlToValidate="tripDateTxt"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="timeLabel" runat="server" Text="No of Hours"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="hoursList" runat="server">
                    <asp:ListItem>30 Minutes</asp:ListItem>
                    <asp:ListItem>1 Hours</asp:ListItem>
                    <asp:ListItem>2 Hours</asp:ListItem>
                    <asp:ListItem>3 Hours</asp:ListItem>
                    <asp:ListItem>4 Hours</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="pickUpTimeLabel" runat="server" Text="Pick Up Time"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="pickUpTimeList" runat="server">
                    <asp:ListItem>08:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>05:00 PM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="passengerLabel" runat="server" Text="No of Passenger"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="passengerTxt" runat="server"></asp:TextBox>
            </td>
            <td>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter No of Passengers!!!" ControlToValidate="passengerTxt"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="pickLocationLabel" runat="server" Text="Pick Up Location"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="pickLocationList" runat="server">
                    <asp:ListItem>Muscat</asp:ListItem>
                    <asp:ListItem>Barka</asp:ListItem>
                    <asp:ListItem>Sohar</asp:ListItem>
                    <asp:ListItem>Al musna</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="dropLocationLabel" runat="server" Text="Drop off Location"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="dropLocationList" runat="server">
                    <asp:ListItem>Dubai</asp:ListItem>
                    <asp:ListItem>Al restaq</asp:ListItem>
                    <asp:ListItem>Al swaqe</asp:ListItem>
                    <asp:ListItem>Al khabora</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="updateInsertBtn" runat="server" OnClick="updateInsertBtn_Click" />
                &nbsp;<asp:Button ID="backBtn" runat="server" Text="Back" OnClick="backBtn_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

