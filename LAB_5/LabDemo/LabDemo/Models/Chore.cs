namespace LabDemo.Models
{
    public class Chore
    {
        public int Id { get; set; }
        public string? Title { get; set; }
        public string? Description { get; set; }
        public DateTime DueDate { get; set; }

        // NEW: Status of the chore (e.g., "Ongoing", "Finished")
        public string? Status { get; set; }
    }
}