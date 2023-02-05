<%@ Page Language="C#" AutoEventWireup="true" Codefile="DeleteInvoice.aspx.cs" Inherits="WebApplication_Final_Assignment.DeleteInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Invoice</title>
    <link rel="stylesheet" href="AddInvoiceStyleSheet.css" />
</head>
<body>
    <center>
        <div id="NIMU" runat="server" class="box">
    <h1 style="text-align:center;" ><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Delete Invoice</h2> 
    <form id="form1" runat="server">
        <div class="frm_row_cont">
            <asp:Literal ID="ClientListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Literal ID="StaffListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Literal ID="WorkListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Literal ID="TaskListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblInvoiceID" runat="server" class="frmlabel" Text="Invoice ID:*"></asp:Label>
            <asp:TextBox ID="CtrlInvoiceID" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvInvoiceID"
                ControlToValidate="CtrlInvoiceID" 
                Display="Static"
                runat="server"
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblInvoiceDate" runat="server" class="frmlabel" Text="Invoice Date:"></asp:Label>
            <asp:TextBox ID="CtrlInvoiceDate" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblInvoiceSentDate" runat="server" class="frmlabel" Text="Invoice Sent Date:"></asp:Label>
            <asp:TextBox ID="CtrlInvoiceSentDate" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblInvoiceDueDate" runat="server" class="frmlabel" Text="Invoice Due Date:"></asp:Label>
            <asp:TextBox ID="CtrlInvoiceDueDate" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvInvoiceDueDate"
                ControlToValidate="CtrlInvoiceDueDate" 
                Display="Static"
                runat="server"
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="Label1" runat="server" class="frmlabel" Text="Invoice ID:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                ControlToValidate="CtrlInvoiceID" 
                Display="Static"
                runat="server"
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblInvoiceStatus" runat="server" class="frmlabel" Text="Invoice Status:"></asp:Label>
            <asp:TextBox ID="CtrlInvoiceStatus" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvInvoiceStatus"
                ControlToValidate="CtrlInvoiceStatus" 
                Display="Static"
                runat="server"
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblBusinessName" runat="server" class="frmlabel" Text="Business Name:"></asp:Label>
            <asp:TextBox ID="CtrlBusinessName" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblStartDate" runat="server" class="frmlabel" Text="Start Date:"></asp:Label>
            <asp:TextBox ID="CtrlStartDate" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblEndDate" runat="server" class="frmlabel" Text="End Date:"></asp:Label>
            <asp:TextBox ID="CtrlEndDate" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblSpentHours" runat="server" Text="Spent Hours:"></asp:Label><br />
            <asp:DropDownList ID="CtrlSpentHours" class="dllist" runat="server">
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
				<asp:ListItem>04</asp:ListItem>
				<asp:ListItem>05</asp:ListItem>
				<asp:ListItem>06</asp:ListItem>
				<asp:ListItem>07</asp:ListItem>
				<asp:ListItem>08</asp:ListItem>
				<asp:ListItem>09</asp:ListItem>
				<asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblWorkHours" runat="server" Text="Work Hours:"></asp:Label><br />
            <asp:DropDownList ID="CtrlWorkHours" class="dllist" runat="server">
                <asp:ListItem>08:00 am</asp:ListItem>
                <asp:ListItem>08:30 am</asp:ListItem>
                <asp:ListItem>09:00 am</asp:ListItem>
				<asp:ListItem>09:30 am</asp:ListItem>
				<asp:ListItem>10:00 am</asp:ListItem>
				<asp:ListItem>10:30 am</asp:ListItem>
				<asp:ListItem>11:00 am</asp:ListItem>
				<asp:ListItem>11:30 am</asp:ListItem>
				<asp:ListItem>12:00 pm</asp:ListItem>
				<asp:ListItem>12:30 pm</asp:ListItem>
				<asp:ListItem>13:00 pm</asp:ListItem>
				<asp:ListItem>13:30 pm</asp:ListItem>
				<asp:ListItem>14:00 pm</asp:ListItem>
				<asp:ListItem>14:30 pm</asp:ListItem>
				<asp:ListItem>15:00 pm</asp:ListItem>
                <asp:ListItem>15:30 pm</asp:ListItem>
                <asp:ListItem>16:00 pm</asp:ListItem>
                <asp:ListItem>16:30 pm</asp:ListItem>
                <asp:ListItem>17:00 pm</asp:ListItem>
            </asp:DropDownList>
        </div><br />
        <div>
            <asp:Button ID="BtnDeleteInvoice" runat="server" Text="Delete Invoice" OnClick="BtnDeleteInvoice_Click" />
        </div>
    </form>
        </div>
        </center>
</body>
</html>
