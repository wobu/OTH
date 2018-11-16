using System;
using System.Collections.Generic;

namespace DynamicStructures
{
    class BinaryTreeDummy : BinaryTree<BinaryTreeElement>
    {
        public static BinaryTreeDummy CreateWithPreOrder(List<int> inorder, List<int> preorder)
        {
            var tree = new BinaryTreeDummy();

            tree.Insert(preorder[0]);

            for (int i = 1; i < preorder.Count; i++)
            {
                var e = new BinaryTreeElement { Val = preorder[i] };

                placeValue(tree.Root, e, inorder);
            }

            return tree;
        }

        public static void placeValue(BinaryTreeElement root, BinaryTreeElement e, List<int> inorder)
        {
            if (isLeft(inorder, root.Val, e.Val))
            {
                if (root.Left == null) root.Left = e;
                else {
                    placeValue(root.Left, e, inorder);
                }
            }
            else
            {
                if (root.Right == null) root.Right = e;
                else {
                    placeValue(root.Right, e, inorder);
                }
            }
        }

        public static bool isLeft(List<int> inorder, int root, int val)
        {
            foreach (var v in inorder)
            {
                if (v == root) return false;
                else if(v == val) return true;
            }

            return false;
        }

        public static BinaryTreeDummy CreateWithPostOrder(List<int> inorder, List<int> postorder)
        {
            var tree = new BinaryTreeDummy();

            tree.Insert(postorder[postorder.Count - 1]);

            for (int i = postorder.Count - 2; i >= 0; i--)
            {
                var e = new BinaryTreeElement { Val = postorder[i] };

                placeValue(tree.Root, e, inorder);
            }

            return tree;
        }

        public override bool Contains(int val)
        {
            // TODO not implemented

            return false;
        }

        public override void DeleteValue(int val)
        {
            // TODO not implemented
        }

        public override void Insert(int val)
        {
            var e = new BinaryTreeElement { Val = val };

            if (Root == null)
            {
                Root = e;
            }
            else
            {
                Insert(Root, e);
            }
        }

        public void Insert(BinaryTreeElement root, BinaryTreeElement e)
        {
            // TODO
        }


    }
}