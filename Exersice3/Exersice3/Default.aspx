<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function displayEntryCalendar() {
            var displayCalendar = document.getElementById("entryCalendar");
            displayCalendar.style.display = "block";
        }
        function displayExitCalendar() {
            var displayCalendar = document.getElementById("exitCalendar");
            displayCalendar.style.display = "block";
        }
    </script>
    <style type="text/css">
        #entryCalendar
        {
            display:none;
        }
        #exitCalendar
        {
            display:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Entry Date :
            <asp:TextBox ID="entryText" runat="server"></asp:TextBox>
            <asp:Image ID="entryImage" runat="server" src="pic.png" Hight="25" Width="25" onclick="displayEntryCalendar()" />
            <br />
            <div id="entryCalendar">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            </div>
            <br />
            Exit Date : <asp:TextBox ID="exitText" runat="server"></asp:TextBox><asp:Image ID="exitImage" runat="server" src="pic.png" Hight="25" Width="25" onclick="displayExitCalendar()" />
            <br />
            <div id="exitCalendar">
                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
            </div>
            <br />
            Total No of Days :
            <asp:TextBox ID="daysText" runat="server"></asp:TextBox>
            <br />
            Total No of Nights : <asp:TextBox ID="nightsText" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click" />
        </div>
    </form>
</body>
</html>
