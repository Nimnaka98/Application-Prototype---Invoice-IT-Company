<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTask.aspx.cs" Inherits="WebApplication_Final_Assignment.AddTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Task</title>
    <link rel="stylesheet" href="AddTaskStyleSheet" />
</head>
<body>
    <center>
        <div id="NIMU" runat="server" class="box">
    <h1 style="text-align:center;"><b>Invoice IT</b><br/></h1>
    <hr />
    <h2>Add A New Task</h2>
    <form id="form1" runat="server">
        <div class="frm_row_cont">
            <asp:Label ID="LblTaskID" runat="server" class="frmlabrl" Text="Task ID:*"></asp:Label>
            <asp:TextBox ID="CtrlTaskID" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvTaskID" 
                ControlToValidate="CtrlTaskID" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblTitle" runat="server" class="frmlabel" Text="Task Title:*"></asp:Label>
            <asp:TextBox ID="CtrlTaskTitle" class="tbinput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvTaskTitle" 
                ControlToValidate="CtrlTaskTitle" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblTaskDesc" runat="server" class="frmlabel" Text="Task Description:*"></asp:Label><br />
            <asp:TextBox ID="CtrlTaskDesc" class="tbinput" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="rfvTaskDesc" 
                ControlToValidate="CtrlTaskDesc" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Label ID="LblTaskRate" runat="server" class="frmlabel" Text="Task Rate:*"></asp:Label><br />
            <asp:TextBox ID="CtrlTaskRate" class="tbinput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                ControlToValidate="CtrlTaskRate" 
                Display="Static"
                runat="server" 
                ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </div>
        <div class="frm_row_cont">
            <asp:Button ID="BtnAddTask" runat="server" Text="Add Task" OnClick="BtnAddTask_Click" />
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
        </div>
    </form>
            </div>
        </center>
</body>
</html>
