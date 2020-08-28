using System;
using System.Collections;

namespace data_structure_and_algorithms.Collections
{
    class Array_List
    {
        static void Main(string[] args)
        {
            //ArrayList arrayList = new ArrayList();
            var arrayList = new ArrayList(); // recommended 

            /*arrayList.Add(5);
            arrayList.Add("Moayad");
            arrayList.Add(null);
            arrayList.Add(2.5);*/

            //Add elements using Object Initializer
            arrayList = new ArrayList()
            {
                5, "Moayad", null, 2.5
            };

            arrayList[1] = "Eyad";

            string name = (string)arrayList[1];
            Console.WriteLine(name);

            //arrayList.RemoveRange(0, 3); //Remove elements at index 0, 1 and 2
            arrayList.Remove(null); //Remove value by name
            arrayList.RemoveAt(0); //Remove value by index

            Console.WriteLine("Check if elements are exists:");
            Console.WriteLine(arrayList.Contains("Moayad"));
            Console.WriteLine(arrayList.Contains("Eyad"));

            arrayList.Insert(2, "Third Item"); //Inser new element by index 'Without Replace'

            /*var arr = new ArrayList()
            {
                1, 2, 3
            };*/
            int[] arr = { 1, 2, 3 };
            arrayList.AddRange(arr); //Array elements will be added in the last
            //arrayList.InsertRange(2, arr); //Array elements will be added starting from index 2

            Console.WriteLine("Display all elements:");
            foreach (var item in arrayList)
            {
                Console.WriteLine(item+" ");
            }
        }
    }
}
