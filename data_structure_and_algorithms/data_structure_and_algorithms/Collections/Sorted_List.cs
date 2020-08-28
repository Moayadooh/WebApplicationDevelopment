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
            sortedList.Add(2, "Mohanned");
            sortedList.Add(3, "Mohammed");
            sortedList.Add(1, "Eyad");
            /*var sortedList = new SortedList<int, string>()
            {
                {5, "Moayad" },
                {2, "Mohanned" },
                {3, "Mohammed" },
                {1, "Eyad" }
            };*/

            foreach (KeyValuePair<int, string> kvp in sortedList)
                Console.WriteLine("key: {0}, value: {1}", kvp.Key, kvp.Value);
        }
    }
}
