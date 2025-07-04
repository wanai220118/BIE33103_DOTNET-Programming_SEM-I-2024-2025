using Microsoft.AspNetCore.Mvc;
using ChartDemo.Models; // This should be the correct namespace for your models

public class ClassSummaryController : Controller
{
    // Action to render the view and pass static programme data
    public IActionResult ShowChart()
    {
        // Example data (this could come from a database in a real app)
        var programmes = new List<Programme>
        {
            new Programme { Name = "Information Technology", StudentCount = 120 },
            new Programme { Name = "Software Engineering", StudentCount = 80 },
            new Programme { Name = "Multimedia", StudentCount = 100 },
            new Programme { Name = "Security", StudentCount = 40 }
        };

        return View(programmes);
    }

    // Action to return programme data as JSON for AJAX/Chart.js
    public JsonResult GetProgrammeData()
    {
        var programmes = new List<Programme>
        {
            new Programme { Name = "Information Technology", StudentCount = 120 },
            new Programme { Name = "Software Engineering", StudentCount = 80 },
            new Programme { Name = "Multimedia", StudentCount = 100 },
            new Programme { Name = "Security", StudentCount = 40 }
        };

        return Json(programmes);
    }
}