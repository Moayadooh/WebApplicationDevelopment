using System;
using System.Collections.Generic;

namespace data_structure_and_algorithms.Collections
{
    class Sorted_List
    {
        static void Main(string[] args)
        {
            SortedList<int, string> sortedList = new SortedList<int, string>();
            sortedList.Add(5, "Moayad");
            sortedList.Add(99, "bb");
            sortedList.Add(2, "Mohanned");
            sortedList.Add(3, "Mohammed");
            sortedList.Add(77, "aa");
            sortedList.Add(1, "Eyad");
            //Console.WriteLine(sortedList[1]); //Print the value of key '1'
            /*var sortedList = new SortedList<int, string>()
            {
                {5, "Moayad" },
                {2, "Mohanned" },
                {3, "Mohammed" },
                {1, "Eyad" }
            };*/

            sortedList.RemoveAt(5); //Remove by index
            sortedList.Remove(77);// Remove by key

            /*foreach (KeyValuePair<int, string> item in sortedList)
                Console.WriteLine("key: {0}, value: {1}", item.Key, item.Value);*/
            for (int i = 0; i < sortedList.Count; i++)
                Console.WriteLine("key: {0}, value: {1}", sortedList.Keys[i], sortedList.Values[i]);

            string val;
            if (sortedList.TryGetValue(3, out val))
                Console.WriteLine("{0}, {1}", 3, val);
        }
    }
}
