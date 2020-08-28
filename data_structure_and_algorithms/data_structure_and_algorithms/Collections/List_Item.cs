using System;
using System.Collections.Generic;

namespace data_structure_and_algorithms.Collections
{
    class List_Item
    {
        static void Main(string[] args)
        {
            List<int> items = new List<int>();
            items.Add(1);
            items.Add(2);
            items.Add(4);
            items.Insert(1, 9);
            //Console.WriteLine(items[2]);
            /*var items = new List<int>()
            {
                1,2,4
            };*/

            int[] arr = new int[3] { 9, 8, 7 };
            items.AddRange(arr);

            items.Remove(9);
            items.RemoveAt(0);

            if (items.Contains(9))
                Console.WriteLine("Yes");
            else
                Console.WriteLine("No");

            foreach(var item in items)
            {
                Console.WriteLine(item);
            }
        }
    }
}
