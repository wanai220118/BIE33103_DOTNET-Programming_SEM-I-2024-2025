using System;

namespace ConvertDigitToWord
{
    class Program
    {
        static void Main(string[] args)
        {
            int number;
            int[] num = new int[20];
            string[] digits = {
                "zero", "one", "two", "three", "four",
                "five", "six", "seven", "eight", "nine"
            };

            Console.Write("Enter the number: ");
            number = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Number: " + number);
            Console.Write("Number in words: ");

            int nextDigit;
            int numDigits = 0;

            // Break number into digits (stored in reverse)
            do
            {
                nextDigit = number % 10;
                num[numDigits] = nextDigit;
                numDigits++;
                number = number / 10;
            } while (number > 0);

            // Print in correct order
            for (int i = numDigits - 1; i >= 0; i--)
            {
                Console.Write(digits[num[i]] + " ");
            }

            Console.WriteLine();
            Console.ReadLine(); // Pause
        }
    }
}
