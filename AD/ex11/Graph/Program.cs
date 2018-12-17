using System;

namespace Graph
{
    class Program
    {
        static void Main(string[] args)
        {
            var list = new AdjazenzList();
            list.Vertices.Add(AdjazenzListElement.create(1, 2, 6));
            list.Vertices.Add(AdjazenzListElement.create(3));
            list.Vertices.Add(AdjazenzListElement.create(0, 3, 4));
            list.Vertices.Add(AdjazenzListElement.create(6));
            list.Vertices.Add(AdjazenzListElement.create(0, 5, 8));
            list.Vertices.Add(AdjazenzListElement.create(2, 3, 4, 7));
            list.Vertices.Add(AdjazenzListElement.create(7));
            list.Vertices.Add(AdjazenzListElement.create(3, 8));
            list.Vertices.Add(AdjazenzListElement.create(5));

            var graph = new Graph(list);

            graph.PrintBFSPath(0);
            graph.PrintDFSPath(0);
        }
    }
}
