<%@ Page Language="C#" AutoEventWireup="true" Codefile="DeleteStaff.aspx.cs" Inherits="WebApplication_Final_Assignment.DeleteStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Staff Member</title>
    <link rel="stylesheet" href="AddStaffStyleSheet.css" />
</head>
<body>
    <center>
    <div id="NIMU" runat="server" class="box">
    <h1 style="text-align:center;" ><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Delete Staff Member</h2>
    <form id="form1" runat="server">
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffFname" runat="server" class="frmlabel" Text="Staff Member First Name:*"></asp:Label><br />
            <asp:TextBox ID="CtrlStaffFname" class="tbinput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffFname"
                ControlToValidate="CtrlStaffFname" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffSurname" runat="server" class="frmlabel" Text="Staff Member Surname:*"></asp:Label><br />
            <asp:TextBox ID="CtrlStaffSurname" class="tbinput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffSurname" 
                ControlToValidate="CtrlStaffSurname" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffEmail" runat="server" class="frmlabel" Text="Staff Member Email:*"></asp:Label><br />
            <asp:TextBox ID="CtrlStaffEmail" class="tbinput" runat="server" TextMode="Email"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffEmail" 
                ControlToValidate="CtrlStaffEmail" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffMobile" runat="server" class="frmlabel" Text="Staff Member Mobile:*"></asp:Label><br />
            <asp:TextBox ID="CtrlStaffMobile" class="tbinput" runat="server" TextMode="Number"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffMobile" 
                ControlToValidate="CtrlStaffMobile" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffAccessLevel" runat="server" class="frmlabel" Text="Staff Member Access Level:*"></asp:Label><br />         
            <asp:DropDownList ID="CtrlStaffAccessLevel" class="tbinput" runat="server">
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffStatus" runat="server" class="frmlabel" Text="Staff Member Status:*"></asp:Label><br />         
            <asp:DropDownList ID="CtrlStaffStatus" class="tbinput" runat="server">
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>InActive</asp:ListItem>
            </asp:DropDownList><br />
        </div><br />
        <div class="frm_row_cont">
            <asp:Button ID="BtnDeleteStaff" runat="server" Text="Delete Staff Member" OnClick="BtnDeleteStaff_Click" />
        </div>
    </form>
        </div>
        </center>
</body>
</html>
