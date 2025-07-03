using System;

namespace Lab2
{
    class FindEvenOddNum
    {
        static void Main(string[] args)
        {
            // Prompt user
            Console.WriteLine("Enter a number:");

            // Read input
            string input = Console.ReadLine();

            // Try to parse input
            if (int.TryParse(input, out int number))
            {
                // Check even or odd
                if (number % 2 == 0)
                {
                    Console.WriteLine($"{number} is an even number.");
                }
                else
                {
                    Console.WriteLine($"{number} is an odd number.");
                }
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid integer.");
            }

            Console.WriteLine("Press any key to exit.");
            Console.ReadKey(); // Pause before exit
        }
    }
}
