using System;
using System.ComponentModel.DataAnnotations;

namespace LabDemo.Models
{
    public class ChoreViewModel
    {
        public int Id { get; set; }

        [Required]
        public string Title { get; set; }

        public string Description { get; set; }

        [DataType(DataType.Date)]
        public DateTime DueDate { get; set; }

        [Required]
        public string Status { get; set; }  // “Ongoing” or “Finished”
    }
}
