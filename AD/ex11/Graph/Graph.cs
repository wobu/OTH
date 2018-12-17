using System;
using System.Collections.Generic;

namespace Graph
{
    class AdjazenzListElement
    {
        public int Vertice { get; set; }
        public AdjazenzListElement Next { get; set; }

        public static AdjazenzListElement create(params int[] vertices)
        {
            if (vertices.Length == 0)
            {
                return null;
            }
            else
            {
                var first = new AdjazenzListElement();
                var current = first;

                for (int i = 0; i < vertices.Length; i++)
                {
                    current.Vertice = vertices[i];
                    if ((i + 1) < vertices.Length)
                    {
                        current.Next = new AdjazenzListElement();
                        current = current.Next;
                    }
                }

                return first;
            }
        }
    }
    class AdjazenzList
    {
        public List<AdjazenzListElement> Vertices { get; set; } = new List<AdjazenzListElement>();
    }

    class Graph
    {
        private AdjazenzList list;
        public Graph(AdjazenzList list)
        {
            this.list = list;
        }

        public void PrintBFSPath(int start)
        {
            Console.WriteLine($"BFS path: [{String.Join(',', BFS(start))}]");
        }

        public List<int> BFS(int start)
        {
            var result = new List<int>();
            var queue = new Queue<int>();

            queue.Enqueue(0);
            BFS_Visit(result, queue);

            // outer loop to get vertices which aren't related to
            for (int i = 0; i < this.list.Vertices.Count; i++)
            {
                queue.Enqueue(i);
                BFS_Visit(result, queue);
            }

            return result;
        }

        public void BFS_Visit(List<int> result, Queue<int> queue)
        {
            if (queue.Count > 0)
            {
                var vertice = queue.Dequeue();

                if (!result.Contains(vertice))
                {
                    result.Add(vertice);

                    var element = this.list.Vertices[vertice];

                    while (element != null)
                    {
                        queue.Enqueue(element.Vertice);
                        element = element.Next;
                    }
                }

                if (queue.Count > 0) BFS_Visit(result, queue);
            }
        }

        public void PrintDFSPath(int start)
        {
            Console.WriteLine($"DFS path: [{String.Join(',', DFS(start))}]");
        }

        public List<int> DFS(int start)
        {
            var result = new List<int>();
            var queue = new Queue<int>();

            queue.Enqueue(0);
            DFS_Visit(result, queue);

            // outer loop to get vertices which aren't related to
            for (int i = 0; i < this.list.Vertices.Count; i++)
            {
                queue.Enqueue(i);
                DFS_Visit(result, queue);
            }

            return result;
        }

        public void DFS_Visit(List<int> result, Queue<int> queue)
        {
            if (queue.Count > 0)
            {
                var vertice = queue.Dequeue();

                if (!result.Contains(vertice))
                {
                    result.Add(vertice);
                }

                var element = this.list.Vertices[vertice];

                while (element != null)
                {
                    vertice = element.Vertice;

                    if (!result.Contains(vertice))
                    {
                        result.Add(vertice);
                        queue.Enqueue(vertice);
                        DFS_Visit(result, queue);
                    }

                    element = element.Next;
                }
            }
        }
    }
}