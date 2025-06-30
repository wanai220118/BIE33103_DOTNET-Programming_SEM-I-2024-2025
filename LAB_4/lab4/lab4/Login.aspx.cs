using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4.MasterPages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string userId = txtID.Text.Trim();
                string password = txtPassword.Text.Trim();

                // Example logic for checking credentials
                if (userId == "admin" && password == "1234")
                {
                    lblStatus.Text = "Login Successful!";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblStatus.Text = "Invalid ID or Password!";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtID.Text = string.Empty;
            txtPassword.Text = string.Empty;
            lblStatus.Text = string.Empty;
        }




    }
}