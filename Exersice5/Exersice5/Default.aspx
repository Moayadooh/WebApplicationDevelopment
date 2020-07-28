<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function fun1() {
            var dis = document.getElementById("Calendar1");
            dis.style.display = "block";
        }
        function fun2() {
            var dis = document.getElementById("Calendar2");
            dis.style.display = "block";
        }
    </script>
    <style type="text/css">
        #Calendar1
        {
            display:none;
            position:absolute;
            background-color:white;
        }
        #Calendar2
        {
            display:none;
            position:absolute;
            background-color:white;
        }
    </style>
</head>  
<body>
    <form id="form1" runat="server">
        <div>
            Type of Customer :
            <asp:DropDownList ID="customerList" runat="server">
                <asp:ListItem>Returning Customer</asp:ListItem>
                <asp:ListItem>New Customer</asp:ListItem>
            </asp:DropDownList>
            <br />
            Hotel :
            <asp:DropDownList ID="hotelList" runat="server">
                <asp:ListItem>Tulib</asp:ListItem>
                <asp:ListItem>Seeb</asp:ListItem>
                <asp:ListItem>Naseem</asp:ListItem>
                <asp:ListItem>Raeda</asp:ListItem>
            </asp:DropDownList>
            <br />
            Check-in-date :
            <asp:TextBox ID="indateText" runat="server"></asp:TextBox>
            <asp:Image ID="Image1" src="pic.png" Height="25" Width="25" onclick="fun1()" runat="server" />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            Check-out-date :
            <asp:TextBox ID="outdateText" runat="server"></asp:TextBox>
            <asp:Image ID="Image2" src="pic.png" Height="25" Width="25" onclick="fun2()" runat="server" />
            <br />
            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
            <br />
            Number of Adults : <asp:TextBox ID="adultsText" runat="server"></asp:TextBox>
            <br />
            Number of Children : <asp:TextBox ID="childrenText" runat="server"></asp:TextBox>
            <br />
            Number of Rooms :
            <asp:TextBox ID="roomsText" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
        <div id="dis">

            Type of Customer : <asp:Label ID="customerLabel" runat="server" Text=""></asp:Label>
            <br />
            Hotel :
            <asp:Label ID="hotelLabel" runat="server" Text=""></asp:Label>
            <br />
            Check-in-date :
            <asp:Label ID="inLabel" runat="server" Text=""></asp:Label>
            <br />
            Check-out-date :
            <asp:Label ID="outLabel" runat="server" Text=""></asp:Label>
            <br />
            Number of Day\Night :
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            Number of Adults : 
            <asp:Label ID="adultsLabel" runat="server" Text=""></asp:Label>
            <br />
            Number of Children : 
            <asp:Label ID="childrenLabel" runat="server" Text=""></asp:Label>
            <br />
            Number of Rooms :
            <asp:Label ID="roomsLabel" runat="server" Text=""></asp:Label>
            <br />
            Rate Before Discount (RM) :
            <asp:Label ID="rbdLabel" runat="server" Text=""></asp:Label>
            <br />
            Rate (RT) :
            <asp:Label ID="rtLabel" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
