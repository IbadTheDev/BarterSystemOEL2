<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BarterSystem.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Login Form</div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
        :&nbsp;&nbsp;
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPass" TextMode="Password" runat="server"></asp:TextBox>
        
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="msg" runat="server" Enabled="False" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" />
    </form>
</body>
</html>
