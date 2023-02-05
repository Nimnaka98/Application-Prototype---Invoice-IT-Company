<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="WebApplication_Final_Assignment.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse" style="position:fixed; width:100%; top:0px;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.aspx">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.aspx">Dashboard <span class="sr-only">(current)</span></a></li>
        <li><a href="AddClient.aspx">Add Client</a></li>
          <li><a href="AddStaff.aspx">Add Staff</a></li>
              <li><a href="AddTask.aspx">Add Task</a></li>
          <li><a href="AddWorkItem.aspx">Add Work Item</a></li>
          <li><a href="logout.aspx">Logout</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.aspx">Link</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <center>
    <h1><b><i>Welcome to the Invoice IT Dashboard</i></b></h1><br />
        </center>
    <asp:Panel ID="staffSection" style="border:5px solid blue; width:300px; padding:6px;" runat="server">
        <h1>Staff Panel</h1>
        <a href="AddStaff.aspx">Add Staff</a><br />
        <a href="UpdateStaff.aspx">Update Staff</a><br />
        <a href="DeleteStaff.aspx">Delete Staff</a><br />
        <a href="ViewStaff.aspx">View Staff</a>
    </asp:Panel><br /><br />
    <asp:Panel ID="clientSection" style="border:5px solid green; width:300px; padding:6px;" runat="server">
        <h1>Client Panel</h1>
        <a href="AddClient.aspx">Add Client</a><br />
        <a href="UpdateClient.aspx">Update Client</a><br />
        <a href="DeleteClient.aspx">Delete Client</a><br />
        <a href="ViewClient.aspx">View Client</a>
    </asp:Panel><br /><br />
    <asp:Panel ID="invoiceSection" style="border:5px solid red; width:300px; padding:6px;" runat="server">
        <h1>Invoice Panel</h1>
        <a href="AddInvoice.aspx">Add Invoice</a><br />
        <a href="UpdateInvoice.aspx">Update Invoice</a><br />
        <a href="DeleteInvoice.aspx">Delete Invoice</a><br />
        <a href="ViewInvoice.aspx">View Invoice</a>
    </asp:Panel><br /><br />
    <asp:Panel ID="workItemSection" style="border:5px solid yellow; width:300px; padding:6px;" runat="server">
        <h1>Work Item Panel</h1>
        <a href="AddWorkItem.aspx">Add Work Item</a><br />
        <a href="UpdateWorkItem.aspx">Update Work Item</a><br />
        <a href="DeleteWorkItem.aspx">Delete Work Item</a><br />
        <a href="ViewWorkItem.aspx">View Work Item</a>
    </asp:Panel><br /><br />
    <asp:Panel ID="taskSection" style="border:5px solid orange; width:300px; padding:6px;" runat="server">
        <h1>Task Panel</h1>
        <a href="AddTask.aspx">Add Task</a><br />
        <a href="UpdateTask.aspx">Update Task</a><br />
        <a href="DeleteTask.aspx">Delete Task</a><br />
        <a href="ViewTask.aspx">View Task</a>
    </asp:Panel><br /><br />
</body>
</html>
