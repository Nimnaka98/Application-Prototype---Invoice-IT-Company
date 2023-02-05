<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteWorkItem.aspx.cs" Inherits="WebApplication_Final_Assignment.DeleteWorkItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Work Item</title>
    <link rel="stylesheet" href="AddWorkItemStyleSheet.css" />
    <script src="Scripts/jqryui/external/jquery/jquery.js"></script>
    <script src="Scripts/jqryui/jquery-ui.min.js"></script>
    <script>
        $(function () {
            $("#CtrlEvntDate").datepicker({
                dateFormat: "dd/mm/yy",
                inline: true,
                showAnim: 'fadeIn',
                changeMonth: true,
                changeYear: true,
            });
        }); 
    </script>
</head>

<body>
        <center>
    <div id="NIMU" runat="server" class="box">
        <form id="form1" runat="server">
    <h1 style="text-align:center;" ><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Add Work Item</h2>
        <div class="frm_row_cont">
            <asp:Literal ID="StaffListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Literal ID="TaskListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Literal ID="ClientListPH" runat="server"></asp:Literal>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblWorkID" runat="server" class="frmlabel" Text="Work ID:"></asp:Label><br />
            <asp:TextBox ID="CtrlWorkID" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblDate" runat="server" class="frmlabel" Text="Date"></asp:Label><br />
            <asp:TextBox ID="CtrlDate" runat="server"></asp:TextBox>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblWorkStartTime" class="frmlabel" runat="server" Text="Work Start Time:"></asp:Label><br />
            <asp:DropDownList ID="CtrlWorkStartTime" class="dllist" runat="server">
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
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblWorkEndTime" class="frmlabel" runat="server" Text="Work End Time:"></asp:Label><br />
            <asp:DropDownList ID="CtrlWorkEndTime" class="dllist" runat="server">
                <asp:ListItem>08:00 pm</asp:ListItem>
                <asp:ListItem>08:30 pm</asp:ListItem>
                <asp:ListItem>09:00 pm</asp:ListItem>
				<asp:ListItem>09:30 pm</asp:ListItem>
				<asp:ListItem>10:00 pm</asp:ListItem>
				<asp:ListItem>10:30 pm</asp:ListItem>
				<asp:ListItem>11:00 pm</asp:ListItem>
				<asp:ListItem>11:30 pm</asp:ListItem>
				<asp:ListItem>12:00 am</asp:ListItem>
				<asp:ListItem>12:30 am</asp:ListItem>
				<asp:ListItem>13:00 am</asp:ListItem>
				<asp:ListItem>13:30 am</asp:ListItem>
				<asp:ListItem>14:00 am</asp:ListItem>
				<asp:ListItem>14:30 am</asp:ListItem>
				<asp:ListItem>15:00 am</asp:ListItem>
                <asp:ListItem>15:30 am</asp:ListItem>
                <asp:ListItem>16:00 am</asp:ListItem>
                <asp:ListItem>16:30 am</asp:ListItem>
                <asp:ListItem>17:00 am</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblWorkItemStatus" class="frmlabel" runat="server" Text="Work Item Status:"></asp:Label><br />
            <asp:DropDownList ID="CtrlWorkItemStatus" class="dllist" runat="server">
			<asp:ListItem value="0">--Please make a selection--</asp:ListItem>
                <asp:ListItem value="Paused">Paused</asp:ListItem>
                <asp:ListItem value="Ongoing">Ongoing</asp:ListItem>
                <asp:ListItem value="Completed">Completed</asp:ListItem>
				<asp:ListItem value="Discontinued">Discontinued</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblWorkItemComm" class="frmlabel" runat="server" Text="Work Item Comment:"></asp:Label><br />
            <asp:TextBox ID="CtrlWorkItemComm" runat="server" TextMode="MultiLine" Height="75px"></asp:TextBox>
        </div><br />
            <div class="frm_row_cont">
                <asp:Button ID="BtnDeleteWorkItem" runat="server" Text="Delete Work Item" OnClick="BtnDeleteWorkItem_Click" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
            </div>
    </form>
    </div>
    </center>
</body>
</html>
