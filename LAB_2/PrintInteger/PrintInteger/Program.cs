using System;

namespace PrintInteger
{
    class Program
    {
        static void Main(string[] args)
        {
            int number;
            Console.Write("Enter a number: ");
            number = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("You entered: {0}", number);
            Console.ReadLine(); // Keeps window open
        }
    }
}