<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminInfo.aspx.cs" Inherits="reCruit.Center.adminInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        body {background-color: antiquewhite } 
        .auto-style3 {
            text-align: center;
            font-size: medium;
        }
        .auto-style4 {
            text-align: center;
            font-size: large;
        }
        .auto-style5 {
            text-align: center;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="auto-style2">
            <strong>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style1" ForeColor="#454141"></asp:Label>
            <br />
            </strong>
        </div>
        <p class="auto-style2">
            <strong>Total Clicks:
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp; Online Users:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </strong>
        </p>
            <p class="auto-style5">
                &nbsp;</p>
            <p class="auto-style5">
                &nbsp;</p>
            <p class="auto-style3">
                <strong>Here you can post job information and view information of candidates.</strong></p>
            <p class="auto-style3">
                &nbsp;</p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="280px" ImageUrl="~/image/发布.png" OnClick="ImageButton1_Click" Width="400px" />
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="280px" ImageUrl="~/image/查看.png" OnClick="ImageButton2_Click" Width="400px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
    <p class="auto-style4">
        <strong>It is vital to bring new energy to BUPT.</strong></p>
</body>
</html>
