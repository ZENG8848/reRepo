<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jobInfo.aspx.cs" Inherits="reCruit.pages.jobInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />

        </div>
        <div>
            工作ID<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            职位<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            薪资<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            要求<asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            地点<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            时间<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="查询" />
            <asp:Button ID="Button2" runat="server" Text="修改" />
            <asp:Button ID="Button3" runat="server" Text="删除" />
            <asp:Button ID="Button4" runat="server" Text="增加" />
            <br />
            </div>
    </form>
</body>
</html>
