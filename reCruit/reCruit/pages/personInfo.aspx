﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personInfo.aspx.cs" Inherits="reCruit.Center.personInfo" %>

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
            font-size: large;
        }
        .auto-style4 {
            text-align: center;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style1" ForeColor="#454141"></asp:Label>
            <br />
            </strong>
        </div>
        <p>
            <strong>User</strong> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp; 
            <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click" Text="Change user information" />
        &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click" Text="Sign out" />
        </p>
        <p>
            基本信息information</p>
        <p>
            简历信息</p>
        <div class="auto-style2">
           <center> <table><tr>
            <td>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="300px" ImageUrl="~/image/我的简历.png" OnClick="ImageButton1_Click" Width="330px" />
</td>
            <td>&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="301px" ImageUrl="~/image/招聘申请.png" OnClick="ImageButton2_Click" Width="330px" />
</td>
            <td>&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="300px" ImageUrl="~/image/已投递简历.png" OnClick="ImageButton3_Click" Width="330px" />
</td>
            <td >&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="301px" ImageUrl="~/image/招聘结果公示.png" OnClick="ImageButton4_Click" Width="330px" />
</td>
            </tr></table></center>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p class="auto-style3">
        <strong>We sincerely looking forward to your joining.</strong></p>
    <p class="auto-style4">
        <strong style="color: #454141">BUPT Career.</strong></p>
</body>
</html>
