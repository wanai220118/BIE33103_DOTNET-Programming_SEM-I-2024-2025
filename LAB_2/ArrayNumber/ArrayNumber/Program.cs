using System;

namespace ArrayNumber
{
    class Program
    {
        static void Main()
        {
            // Three-element array
            int[] array = { -5, -6, -7 };

            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine(array[i] + "\n");
            }

            Console.ReadKey(); // Pause the console
        }
    }
}
