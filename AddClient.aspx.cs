using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication_Final_Assignment
{
    public partial class AddClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddClient_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                NameValueCollection NewClientData = Request.Form;
                Client NewClient = new Client();
                string Result = NewClient.AddClient(NewClientData);
                Response.Write(Result);
                AppUtilities.ClearForm(Form.Controls);
            }
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            // Button Actions
        }
    }
}