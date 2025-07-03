using System;

namespace GenerateSumNumber
{
    class Program
    {
        static void Main(string[] args)
        {
            int number, sum = 0;

            Console.Write("Enter a Number: ");
            number = Convert.ToInt32(Console.ReadLine());

            if (number < 0)
            {
                Console.Write("Please enter a positive number.");
            }
            else
            {
                while (number > 0)
                {
                    sum += number;
                    number -= 1;
                }
                Console.WriteLine("The sum is " + sum);
            }

            Console.ReadKey(); // Keeps console open
        }
    }
}
