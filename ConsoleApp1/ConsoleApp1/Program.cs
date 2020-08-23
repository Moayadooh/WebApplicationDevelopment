using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static double Sigmoid(double n)
        {
            double sum = 1;
            for (int i = 10 - 1; i > 0; i--)
                sum = 1 + (-n) * sum / i;

            return 1/(1+sum);
        }
        static void Main(string[] args)
        {
            //double n = double.Parse(Console.ReadLine());
            //Console.WriteLine(Sigmoid(n));
            //int[] arr = new int[5];

            /*int[] arr = { 3, 4, 6, 1, 8};
            for(int i = 0; i < arr.Length; i++)
            {
                for (int j = 0; j < arr.Length - 1; j++)
                {
                    if (arr[j] > arr[j + 1])
                    {
                        int temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    }
                }
            }

            for (int i = 0; i < arr.Length; i++)
            {
                Console.WriteLine(arr[i]);
            }*/

            List<String> obj = new List<String>();
            obj.Add("s");
            Console.WriteLine(obj[1]);

        }
    }
}
