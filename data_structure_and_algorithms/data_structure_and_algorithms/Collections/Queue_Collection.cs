using System;
using System.Collections.Generic;
using System.Text;

namespace data_structure_and_algorithms.Collections
{
    class Queue_Collection
    {
        static void Main(string[] args)
        {
            Queue<string> q = new Queue<string>();
            q.Enqueue("E");
            q.Enqueue("y");
            q.Enqueue("a");
            q.Enqueue("d");

            if (q.Contains("d"))
                Console.WriteLine("Yes");

            Console.WriteLine(q.Count); //Print number of elements
            Console.WriteLine(q.Peek());

            while (q.Count > 0)
                Console.Write(q.Dequeue());
        }
    }
}
