using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using TinyTotsWebApp.Models; // Your EF model namespace

namespace TinyTotsWebApp
{
    public partial class RegisterChild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nothing to do on page load currently
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Create EF DbContext instance
            using (var db = new TinyTotsDbContext())
            {
                // Create new registration record from form inputs
                var registration = new TinyTots
                {
                    FirstName = txtFirstName.Text.Trim(),
                    SecondName = txtSecondName.Text.Trim(),
                    Race = ddlRace.SelectedValue,
                    Gender = rblGender.SelectedValue,
                    FoodAllergies = string.Join(", ",
                        cblAllergies.Items
                            .Cast<ListItem>()
                            .Where(i => i.Selected)
                            .Select(i => i.Text)
                    )
                };

                // Add record to database and save changes
                db.TinyTotsTable.Add(registration);
                db.SaveChanges();

                lblTime.Text = $"Hello friends! The time is now {DateTime.Now.ToString("d/M/yyyy h:mm:ss tt")}";

                // Optional: Show confirmation (you can also redirect)
                Response.Write("<script>alert('Child registered successfully!');</script>");
            }
        }
    }
}
