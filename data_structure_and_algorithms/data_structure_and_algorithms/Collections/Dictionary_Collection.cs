using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace data_structure_and_algorithms.Collections
{
    class Dictionary_Collection
    {
        static void Main(string[] args)
        {
            //Hashtable hashtable = new Hashtable(); //Similar to Dictionar implementation

            //IDictionary<int, string> dictionary = new Dictionary<int, string>();
            /*dictionary.Add(5, "Barka");
            dictionary.Add(7, "Muscat");
            dictionary.Add(2, "Sohar");*/
            var dictionary = new Dictionary<int, string>()
            {
                {5, "Barka" },
                {7, "Muscat" },
                {2, "Sohar" }
            };

            dictionary[2] = "Saham";
            dictionary.Remove(7);

            /*foreach (KeyValuePair<int, string> item in dictionary)
                Console.WriteLine("key: {0}, value: {1}", item.Key, item.Value);*/
            for (int i = 0; i < dictionary.Count; i++)
                Console.WriteLine("key: {0}, value: {1}", dictionary.ElementAt(i).Key, dictionary.ElementAt(i).Value);

            if (dictionary.ContainsKey(3))
                Console.WriteLine("Key is exist");
            else
                Console.WriteLine("Key is not exist");

            if (dictionary.ContainsValue("Muscat"))
                Console.WriteLine("Value is exist");
            else
                Console.WriteLine("Value is not exist");

            string region;
            if (dictionary.TryGetValue(5, out region))
                Console.WriteLine(region);

            dictionary.Clear();
        }
    }
}
