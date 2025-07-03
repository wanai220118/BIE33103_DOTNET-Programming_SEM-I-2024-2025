using System;

namespace CarryMark
{
    class Program
    {
        static void Main()
        {
            // Student data
            string[] students = { "Student1", "Student2", "Student3", "Student4" };
            int[] marks = { 67, 55, 89, 34 };

            Console.WriteLine("Carry Marks:");
            Console.WriteLine("-------------------------------");

            // Loop to calculate carry marks
            for (int i = 0; i < students.Length; i++)
            {
                double carryMark = marks[i] * 0.6;
                Console.WriteLine($"{students[i]}: {carryMark:F2}");
            }

            Console.WriteLine("\nPress any key to continue...");
            Console.ReadKey(); // Pause
        }
    }
}
