using ChartDemo.Models;
using Microsoft.EntityFrameworkCore;

namespace ChartDemo.Models
{
    public class Programme
    {
        public string Name { get; set; }
        public int StudentCount { get; set; }
    }

    public class ClassSummary
    {
        public int Id { get; set; }
        public string ProgrammeName { get; set; }
        public int StudentCount { get; set; }
    }
}