using System;

namespace Method {
    class Program {
        public static double Circumference(double r) {
            return 2 * r * 3.14;
        }
        
        public static double Area(double r) {
            return r * r * 3.14;
        }

        static void Main(string[] args) {
            double r = double.Parse(Console.ReadLine());
            Console.WriteLine("Circumference: " + Circumference(r));
            Console.WriteLine("Area: " + Area(r));
        }
    }
}
