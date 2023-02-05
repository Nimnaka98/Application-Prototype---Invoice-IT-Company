<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="WebApplication_Final_Assignment.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add User</title>
    <link rel="stylesheet" href="AddWorkItemStyleSheet.css" />
</head>
<body>
    <center>
    <div id="NIMU" runat="server" class="box">
    <h1 style="text-align:center;"><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Add User</h2>
    <form id="form1" runat="server">
        <div class="frm_row_cont">
            <asp:Label ID="LblUserFName" runat="server" class="frmlabel" Text="First Name:*"></asp:Label><br />
            <asp:TextBox ID="CtrlUserFName" class="tbinput" runat="server"></asp:TextBox><br />
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblSysRole" runat="server" class="frmlabel" Text="Role ID:*"></asp:Label>
            <asp:TextBox ID="CtrlSysRole" class="tbinput" runat="server" TextMode="Number"></asp:TextBox><br />
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblUserEmail" runat="server" class="frmlabel" Text="Email Address:* "></asp:Label>
            <asp:TextBox ID="CtrlUserEmail" class="tbinput" TextMode="Email" runat="server"></asp:TextBox><br />
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblUserPassword" runat="server" class="frmlabel" Text="Password:*"></asp:Label>
            <asp:TextBox ID="CtrlUserPassword" class="tbinput" runat="server" TextMode="Password"></asp:TextBox><br />
            </div>
        <div class="frm_row_cont">
            <asp:Button ID="BtnAddUser" runat="server" Text="Add User" OnClick="BtnAddUser_Click" />
        </div>
    </form>
        </div>
        </center>
</body>
</html>
