%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStaff.aspx.cs" Inherits="WebApplication_Final_Assignment.UpdateStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Staff</title>
</head>
<body>
    <center>
        <div id="NIMU" runat="server" class="box">
    <h1 style="text-align:center;" ><i>Invoice IT</i><br/></h1>
    <hr />
            <h2>Update A Staff Member</h2>
    <div id="frmcont" runat="server"></div>
    <div id="updatestaffheader" runat="server"></div>
    <form id="UpdateClient" runat="server">
        <asp:HiddenField ID="CtrlStaffID" runat="server" Value="" />
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffFname" runat="server" class="frmlabel" Text="Staff Member First Name*"></asp:Label><br />
            <asp:TextBox ID="CtrlStaffFname" class="tbinput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffFname" 
                ControlToValidate="CtrlStaffFname" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffSurname" runat="server" class="frmlabel" Text="Staff Member SurName*"></asp:Label><br />
            <asp:TextBox ID="CtrlStaffSurname" class="tbinput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffSurname" 
                ControlToValidate="CtrlStaffSurname" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffEmail" runat="server" class="frmlabel" Text="Staff Member Email*"></asp:Label>
            <br />
            <asp:TextBox ID="CtrlStaffEmail" class="tbinput" runat="server" TextMode="Email"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffEmail" 
                ControlToValidate="CtrlStaffEmail" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffMobile" runat="server" class="frmlabel" Text="Staff Member Mobile*"></asp:Label>
            <br />
            <asp:TextBox ID="CtrlStaffMobile" class="tbinput" runat="server" TextMode="Number"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvStaffMobile" 
                ControlToValidate="CtrlStaffMobile" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffAccessLevel" runat="server" class="frmlabel" Text="Staff Member Access Level*"></asp:Label><br />
            <asp:Literal ID="StaffAccessLevelPH" runat="server"></asp:Literal>
             <!--
            <asp:DropDownList ID="CtrlStaffAccessLevel" class="tbinput" runat="server">
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
            </asp:DropDownList>
            -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStaffStatus" runat="server" Text="Staff Member Status*"></asp:Label><br />
            <asp:Literal ID="StaffStatusPH" runat="server"></asp:Literal>
            <!--
            <asp:DropDownList ID="CtrlStaffStatus" class="tbinput" runat="server">
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>InActive</asp:ListItem>
            </asp:DropDownList>
             -->
        </div>
        <div class="frm_row_cont">
            <asp:Button ID="BtnUpdateStaff" runat="server" CssClass="button" Text="Update Staff" Onclick="BtnUpdateStaff_Click"/>
            </div>
    </form>
        </div>
        </center>
</body>
</html>
