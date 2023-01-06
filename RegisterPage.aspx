<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="BarterSystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Register<br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        :
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
        :
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <p>
            <asp:Button ID="btnReg" runat="server" Text="Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLog" runat="server" Text="Already Have an Account? Login" />
        </p>
    </form>
</body>
</html>
