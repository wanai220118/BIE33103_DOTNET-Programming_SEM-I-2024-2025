using System;

namespace MultiplyTwoInteger
{
    class Program
    {
        static void Main(string[] args)
        {
            int var1, var2, prod;

            Console.Write("Enter number 1: ");
            var1 = Int32.Parse(Console.ReadLine()); // or Convert.ToInt32()

            Console.Write("Enter number 2: ");
            var2 = Int32.Parse(Console.ReadLine());

            prod = var1 * var2;

            Console.WriteLine("Result: " + prod);

            Console.ReadKey(); // Optional to pause
        }
    }
}