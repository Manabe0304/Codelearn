using System;

namespace Method {
    class Program {
        public static void Show(int[] arr) {
            for(int i = 0; i < arr.Length; i++) {
                if(arr[i] % 3 == 0 && arr[i] % 5 != 0) {
                    Console.Write(arr[i] + " ");
                }
            }
        }
        
        static void Main(string[] args) {
            int n = int.Parse(Console.ReadLine());
            int[] arr = new int[n];
            for (int i = 0; i < n; i++) {
                arr[i] = int.Parse(Console.ReadLine());
            }
            Show(arr);
        }
    }
}
