using System;

namespace Lab2_Fibonacci
{
    class Program
    {
        static void Main(string[] args)
        {
            // Prompt user
            Console.WriteLine("Enter the number of Fibonacci terms you want to generate:");
            string input = Console.ReadLine();

            // Parse input and check positive number
            if (int.TryParse(input, out int n) && n > 0)
            {
                int firstNumber = 0, secondNumber = 1;

                Console.WriteLine("Fibonacci Series:");

                for (int i = 0; i < n; i++)
                {
                    Console.Write(firstNumber + " ");
                    int nextNumber = firstNumber + secondNumber;
                    firstNumber = secondNumber;
                    secondNumber = nextNumber;
                }
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a positive integer.");
            }

            Console.WriteLine("\nPress any key to exit.");
            Console.ReadKey(); // Pause
        }
    }
}
