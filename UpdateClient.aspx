<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateClient.aspx.cs" Inherits="WebApplication_Final_Assignment.UpdateClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add A New Client</title>
    <link rel="stylesheet" href="AddClientStyleSheet.css" />
</head>
<body>
    <center>
    <div id="NIMU" runat="server" class="box">
    <h1 style="text-align:center;" ><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Add A New Client</h2>
    <form id="AddNewClient" runat="server">
        <div class="frm_row_cont">
            <asp:Label ID="LblCompName" runat="server" class="frmlabel" Text="Company Name:"></asp:Label>
            <asp:TextBox ID="CtrlCompName" class="tbinput" runat="server"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvCompName" 
                ControlToValidate="CtrlCompName" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator> -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblCompAdd1" runat="server" class="frmlabel" Text="Company Address 1:"></asp:Label>
            <asp:TextBox ID="CtrlCompAdd1" class="tbinput" runat="server" TextMode="MultiLine" Height="75px" Width="365px"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvCompAdd1" 
                ControlToValidate="CtrlCompAdd1" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is is required."></asp:RequiredFieldValidator> -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblCompAdd2" runat="server" class="frmlabel" Text="Company Address 2:"></asp:Label>
            <asp:TextBox ID="CtrlCompAdd2" class="tbinput" runat="server" TextMode="MultiLine" Height="75px" Width="359px"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvCompAdd2" 
                ControlToValidate="CtrlCompAdd2" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is is required."></asp:RequiredFieldValidator> -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblCompLocation" runat="server" class="frmlabel" Text="Company Location:"></asp:Label>
            <asp:TextBox ID="CtrlCompLocation" class="tbinput" runat="server"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvCompLocation" 
                ControlToValidate="CtrlCompLocation" 
                Display="Static"
                runat="server" 
                ErrorMessage="This Field is required."></asp:RequiredFieldValidator> -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblCompPcode" runat="server" class="frmlabel" Text="Company Postal Code:"></asp:Label>
            <asp:TextBox ID="CtrlCompPcode" class="tbinput" runat="server" TextMode="Number" Width="128px"></asp:TextBox><br />
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblContactFname" runat="server" class="frmlabel" Text="Client First Name:"></asp:Label>
            <asp:TextBox ID="CtrlContactFname" class="tbinput" runat="server"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvContactFname" 
                ControlToValidate="CtrlContactFname" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator> -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblContactLname"  runat="server" class="frmlabel" Text="Client Last Name:"></asp:Label>
            <asp:TextBox ID="CtrlContactLname" class="tbinput" runat="server"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvContactLname" 
                ControlToValidate="CtrlContactLname" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
                -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblContactEmail" runat="server" class="frmlabel" Text="Client Email:"></asp:Label>
            <asp:TextBox ID="CtrlContactEmail" class="tbinput" runat="server" TextMode="Email" Width="238px"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvContactEmail" 
                ControlToValidate="CtrlContactEmail" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
                -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblContactMobile" runat="server" class="frmlabel" Text="Client Mobile Number:"></asp:Label>
            <asp:TextBox ID="CtrlContactMobile" class="tbinput" runat="server" TextMode="Number"></asp:TextBox><br />
            <!-- <asp:RequiredFieldValidator 
                ID="rfvContactMobile" 
                ControlToValidate="CtrlContactMobile" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator> -->
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblBillTo" runat="server" class="frmlabel" Text="Bill To:"></asp:Label>
            <asp:DropDownList ID="CtrlBillTo" class="tbinput" runat="server" placeholder="Please Select">
                <asp:ListItem>Company</asp:ListItem>
                <asp:ListItem>Client</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStatus" runat="server" class="frmlabel" Text="Status:"></asp:Label>
            <asp:DropDownList ID="CtrlStatus" class="tbinput" runat="server" placeholder="Please Select">
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>In Arrears</asp:ListItem>
                <asp:ListItem>Discontinued</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="frm_row_cont">
            <asp:Button ID="BtnUpdateClient" runat="server" Text="Update Client" />
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
        </div>
        
    </form>
    </div>
    </center>
</body>
</html>
