using System;

namespace CalculatorApplication
{
    class NumberManipulator
    {
        public int FindMax(int num1, int num2)
        {
            int result;

            if (num1 > num2)
                result = num1;
            else
                result = num2;

            return result;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            int a = 100;
            int b = 200;
            int ret;

            NumberManipulator n = new NumberManipulator(); // Object instantiation
            ret = n.FindMax(a, b); // Call method

            Console.WriteLine("Max value is: {0}", ret);
            Console.ReadLine(); // Keeps console open
        }
    }
}