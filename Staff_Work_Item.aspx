<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff_Work_Item.aspx.cs" Inherits="WebApplication_Final_Assignment.Staff_Work_Item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Work Item</title>
    <link rel="stylesheet" href="StaffWorkItemStyleSheet.css" />
</head>
<body>
    <center>
    <div id="NIMU" runat="server" class="box">
        <form>
    <h1 style="text-align:center;"><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Staff Work Item</h2>
        <div class="frm_low_cont">
            <asp:Literal ID="StaffWorkItemListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_low_cont">
            <asp:Label ID="LblStaffID" runat="server" class="frmlabel" Text="Staff ID:"></asp:Label>
            <asp:TextBox ID="CtrlStaffID" class="tbinput" runat="server"></asp:TextBox>
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
