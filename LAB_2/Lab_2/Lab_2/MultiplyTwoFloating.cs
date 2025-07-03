using System;

namespace MultiplyTwoFloating
{
    class Program
    {
        static void Main(string[] args)
        {
            float number1, number2, product;

            number1 = 12.45f;
            number2 = 10.74f;

            product = number1 * number2;

            Console.WriteLine("{0} * {1} = {2}", number1, number2, product);
            Console.ReadLine(); // Pause the console
        }
    }
}