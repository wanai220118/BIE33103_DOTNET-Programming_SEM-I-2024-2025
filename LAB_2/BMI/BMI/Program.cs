using System;

namespace Lab2
{
    class BMI
    {
        static void Main(string[] args)
        {
            double bmi, w, h;

            Console.Write("Enter your weight (in kg): ");
            w = Convert.ToDouble(Console.ReadLine());

            Console.Write("Enter your height (in m): ");
            h = Convert.ToDouble(Console.ReadLine());

            bmi = w / (h * h);
            Console.WriteLine("Your BMI is: " + bmi);

            int category;

            if (bmi < 18.5)
                category = 1; // Underweight
            else if (bmi >= 18.5 && bmi < 24.9)
                category = 2; // Healthy
            else if (bmi >= 24.9 && bmi < 30)
                category = 3; // Overweight
            else
                category = 4; // Obesity

            switch (category)
            {
                case 1:
                    Console.WriteLine("\nUnderweight");
                    break;
                case 2:
                    Console.WriteLine("\nHealthy");
                    break;
                case 3:
                    Console.WriteLine("\nOverweight");
                    break;
                case 4:
                    Console.WriteLine("\nSuffering from Obesity");
                    break;
            }

            Console.WriteLine("\nPress any key to continue...");
            Console.ReadKey(); // Pause
        }
    }
}
