using System;
using System.Collections.Generic;
using System.Text;

namespace data_structure_and_algorithms.Collections
{
    class Stack_Collection
    {
        static void Main(string[] args)
        {
            int[] arr = { 1, 2, 3 };
            Stack<int> stack = new Stack<int>(arr);
            stack.Push(5);
            stack.Push(9);
            stack.Push(7);

            Console.WriteLine(stack.Peek());

            if (stack.Contains(2))
                Console.WriteLine("Yes");
            else
                Console.WriteLine("No");

            Console.WriteLine("Pop the elements from the stack:");
            while (stack.Count > 0)
                Console.WriteLine(stack.Pop());
        }
    }
}
