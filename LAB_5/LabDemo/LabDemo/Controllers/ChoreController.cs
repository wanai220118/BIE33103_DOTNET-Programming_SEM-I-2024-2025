using LabDemo.Data;
using LabDemo.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace LabDemo.Controllers
{
    public class ChoreController : Controller
    {
        private readonly ApplicationDbContext dbContext;

        public ChoreController(ApplicationDbContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpGet]
        public async Task<IActionResult> List()
        {
            var chores = await dbContext.Chores.ToListAsync();

            if (chores == null || !chores.Any())
            {
                chores = new List<Chore>
                {
                    new Chore { Id = 1, Title = "Complete lab assignment", Description = "Finish the lab assignment for Web Core MVC", DueDate = DateTime.Now.AddDays(7), Status = "Ongoing" },
                    new Chore { Id = 2, Title = "Study for exam", Description = "Prepare for upcoming exam on MVC concepts", DueDate = DateTime.Now.AddDays(14), Status = "Ongoing" }
                };
            }

            return View(chores);
        }

        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Add(ChoreViewModel viewModel)
        {
            if (!ModelState.IsValid)
            {
                return View(viewModel);
            }

            var chore = new Chore
            {
                Title = viewModel.Title,
                Description = viewModel.Description,
                DueDate = viewModel.DueDate,
                Status = viewModel.Status // ✅ Include status here
            };

            await dbContext.Chores.AddAsync(chore);
            await dbContext.SaveChangesAsync();

            return RedirectToAction("List");
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var chore = await dbContext.Chores.FindAsync(id);

            if (chore == null)
            {
                return NotFound();
            }

            return View(new ChoreViewModel
            {
                Id = chore.Id,
                Title = chore.Title,
                Description = chore.Description,
                DueDate = chore.DueDate,
                Status = chore.Status // ✅ Load status to ViewModel
            });
        }

        [HttpPost]
        public async Task<IActionResult> Edit(ChoreViewModel viewModel)
        {
            if (!ModelState.IsValid)
            {
                return View(viewModel);
            }

            var chore = await dbContext.Chores.FindAsync(viewModel.Id);

            if (chore == null)
            {
                return NotFound();
            }

            chore.Title = viewModel.Title;
            chore.Description = viewModel.Description;
            chore.DueDate = viewModel.DueDate;
            chore.Status = viewModel.Status; // ✅ Update status

            await dbContext.SaveChangesAsync();

            return RedirectToAction("List");
        }

        [HttpPost]
        public async Task<IActionResult> Delete(ChoreViewModel viewModel)
        {
            var chore = await dbContext.Chores.FindAsync(viewModel.Id);

            if (chore != null)
            {
                dbContext.Chores.Remove(chore);
                await dbContext.SaveChangesAsync();
            }

            return RedirectToAction("List");
        }
    }
}
