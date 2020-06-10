<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="reCruit.pages.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 90px;
            color: #FFFFFF;
            text-align: center;
            background-color: #000000;
        }
        .auto-style3 {
            text-align: center;
        }
        </style>
</head>
<body bgcolor="FCF0E6">
    <form id="form1" runat="server">
        <h1 class="auto-style2">BUPT Career</h1>
        <div>
            <h2 class="auto-style3">Job Offers</h2>
            <p>
                As we grow and expand, we need to attract and nurture the finest talent on every continent. External recruitment is a strategic pillar of our human resources policy. It is vital to bringing new energy to BUPT.
            </p>
        </div>
        <h2 class="auto-style3">Sign Up</h2>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
            User Name: </strong>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="请填写正确用户名！" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
            Password:&nbsp;</strong>
            <asp:TextBox ID="psdtxt" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="psdtxt" ErrorMessage="密码少于六位！" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </p>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Confirm Password:</strong><asp:TextBox ID="txtpsd2" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="psdtxt" ControlToValidate="txtpsd2" ErrorMessage="确认密码输入错误！" ForeColor="Red"></asp:CompareValidator>
        </p>
        <p class="auto-style3">
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="29px" Text="Sign Up" Width="99px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="32px" Text="Exit" Width="93px" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
