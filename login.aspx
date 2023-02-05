<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication_Final_Assignment.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link rel="stylesheet" href="LoginStyleSheet.css" />
</head>
<body>
    <center>
        <middle>
        <div id="NIMU" runat="server" class="box">
        <form id="form1" runat="server">
            <asp:Label ID="LoginText" runat="server" Text="User Login" class="frmlabel"></asp:Label><br />
            <asp:TextBox ID="CtrlUserName" runat="server" placeholder="Username" class="tbinputShort" required></asp:TextBox><br />
            <asp:TextBox ID="CtrlUserPassword" runat="server" TextMode="Password" class="tbinputShort" placeholder="Password" required></asp:TextBox><br />
            <asp:CheckBox ID="CheckBox1" runat="server"/>Remember Me
            <h6><a href="#">Forgot Password?</a></h6>
            <asp:Button ID="BtnLogin" runat="server" Text="Login" class="button" OnClick="BtnLogin_Click" />
        </form>
    </div>
        </middle>
    </center>
</body>
</html>
