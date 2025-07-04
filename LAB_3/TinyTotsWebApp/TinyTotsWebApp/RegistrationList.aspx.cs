using System;
using System.Linq;
using System.Web.UI.WebControls;
using TinyTotsWebApp.Models;

namespace TinyTotsWebApp
{
    public partial class RegistrationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load the registration data only on first load
                BindGrid();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtSearch.Text.Trim().ToLower();

            using (var db = new TinyTotsDbContext())
            {
                var result = db.TinyTotsTable
                    .Where(r => r.FirstName.ToLower().Contains(keyword) || r.SecondName.ToLower().Contains(keyword))
                    .ToList();

                gvRegistrations.DataSource = result;
                gvRegistrations.DataBind();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            BindGrid();
        }

        // Load data from database and bind to GridView
        private void BindGrid()
        {
            using (var db = new TinyTotsDbContext())
            {
                gvRegistrations.DataSource = db.TinyTotsTable.ToList();
                gvRegistrations.DataBind();
            }
        }

        // Handle Delete button click event in GridView
        protected void gvRegistrations_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the RegistrationId of the row being deleted
            int registrationId = (int)gvRegistrations.DataKeys[e.RowIndex].Value;

            using (var db = new TinyTotsDbContext())
            {
                var recordToDelete = db.TinyTotsTable.FirstOrDefault(r => r.RegistrationId == registrationId);
                if (recordToDelete != null)
                {
                    db.TinyTotsTable.Remove(recordToDelete);
                    db.SaveChanges();
                }
            }

            // Refresh the GridView after deletion
            BindGrid();
        }
    }
}
