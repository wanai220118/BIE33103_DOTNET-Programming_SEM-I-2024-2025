using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Reset the status label on page load
            lblStatus.Text = string.Empty;
        }

        // Handle Submit Button click event
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)  // Check if all validators passed
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string message = txtMessage.Text.Trim();

                // Process the data here (e.g., save to database or send an email)
                // For now, we are just displaying a success message
                lblStatus.Text = "Thank you for contacting us, " + name + ". We will get back to you soon!";
                lblStatus.ForeColor = System.Drawing.Color.Green;

                // Optional: Clear the form after submission
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMessage.Text = string.Empty;
            }
            else
            {
                lblStatus.Text = "Please correct the errors and try again.";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }

        // Handle Cancel Button click event
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Clear the form fields and status label
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtMessage.Text = string.Empty;
            lblStatus.Text = string.Empty;
        }
    }
}