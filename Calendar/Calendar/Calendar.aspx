<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function displayDate()
        {
            var date = document.getElementById("datePicker");
            date.style.display = "block";
        }
    </script>
    <style type="text/css">
        #datePicker
        {
            display:none;
            position:absolute;
            border:solid 2px black;
            background-color:white;
        }
        html
        {
            background-color:silver;
        }
        .content
        {
            width:400px;
            background-color:white;
            margin:auto;
            padding:10px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            DATE :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" src="pic.png" Height="25" Width="25" onclick="displayDate()" />
            <br />
            <div id="datePicker">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            </div>
        </div>
    </form>
</body>
</html>
