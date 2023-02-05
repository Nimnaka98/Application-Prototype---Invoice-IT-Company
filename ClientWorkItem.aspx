<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientWorkItem.aspx.cs" Inherits="WebApplication_Final_Assignment.ClientWorkItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client Work Item</title>
    <link rel="stylesheet" href="ClientWorkItemStyleSheet.css" />
</head>
<body>
    <center>
    <div id="NIMU" runat="server" class="box">
        <form>
    <h1 style="text-align:center;"><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Client Work Item</h2>
        <div class="frm_low_cont">
            <asp:Literal ID="ClientWorkItemListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_low_cont">
            <asp:Label ID="LblClientID" runat="server" class="frmlabel" Text="Client ID:"></asp:Label>
            <asp:TextBox ID="CtrlClientID" class="tbinput" runat="server"></asp:TextBox>
        </div>
        <div class="frm_low_cont">
            <asp:Label ID="LblWorkID" runat="server" class="frmlabel" Text="Work ID:"></asp:Label>
            <asp:TextBox ID="CtrlWorkID" class="tbinput" runat="server"></asp:TextBox>
        </div><br />
        <div class="frm_row_cont">
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
        </div>
        </center>
</body>
</html>
