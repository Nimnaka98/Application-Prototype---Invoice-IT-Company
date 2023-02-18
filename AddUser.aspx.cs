using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Final_Assignment
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddUser_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                NameValueCollection NewUserData = Request.Form;
                User NewUser = new User();
                string Result = NewUser.AddUser(NewUserData);
                Response.Write(Result);
                AppUtilities.ClearForm(Form.Controls);
            }
        }
    }
}