using System;
using System.Collections.Generic;

namespace DynamicStructures
{
    class BinarySearchTree : BinaryTree<BinaryTreeElement>
    {
        public override bool Contains(int val)
        {
            BinaryTreeElement cur = Root;

            while (cur != null)
            {
                if (cur.Val == val) return true;
                else
                {
                    if (val <= cur.Left.Val)
                    {
                        cur = cur.Left;
                    }
                    else
                    {
                        cur = cur.Right;
                    }
                }
            }

            return false;
        }

        // O(log n)
        // every case has (log n )
        public override void DeleteValue(int val)
        {
            BinaryTreeElement cur = Root;
            BinaryTreeElement prev = null;

            while (cur != null)
            {
                if (val == cur.Val)
                {
                    // Leaf
                    // log n
                    if (cur.Left == null && cur.Right == null)
                    {
                        if (prev == null) Root = null;
                        else
                        {
                            if (val <= prev.Val) prev.Left = null;
                            else prev.Right = null;
                        }
                    }
                    // 2 Follower
                    else if (cur.Left != null && cur.Right != null)
                    {
                        BinaryTreeElement inOrderMinValueRight = cur.Right;

                        while (inOrderMinValueRight.Left != null)
                        {
                            inOrderMinValueRight = inOrderMinValueRight.Left;
                        }

                        if (prev == null)
                        {
                            Root = inOrderMinValueRight;
                            Root.Left = cur.Left;
                            Root.Right = cur.Right;
                        }
                        else
                        {
                            if (val <= prev.Val)
                            {
                                prev.Left = inOrderMinValueRight;
                                prev.Left.Left = cur.Left;
                                if (inOrderMinValueRight != cur.Right)
                                {
                                    prev.Left.Right = cur.Right;
                                }
                            }
                            else
                            {
                                prev.Right = inOrderMinValueRight;
                                prev.Right.Left = cur.Left;
                                if (inOrderMinValueRight != cur.Right)
                                {
                                    prev.Right.Right = cur.Right;
                                }
                            }
                        }
                    }
                    // 1 Follower
                    else
                    {
                        if (prev == null) Root = cur.Left ?? cur.Right;
                        else
                        {
                            if (val <= prev.Val) prev.Left = cur.Left ?? cur.Right;
                            else prev.Right = cur.Left ?? cur.Right;
                        }
                    }

                    break;
                }
                else
                {
                    prev = cur;

                    if (val <= cur.Val) cur = cur.Left;
                    else cur = cur.Right;
                }
            }
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

        public virtual void Insert(BinaryTreeElement root, BinaryTreeElement e)
        {
            if (e.Val <= root.Val)
            {
                if (root.Left == null) root.Left = e;
                else Insert(root.Left, e);
            }
            else
            {
                if (root.Right == null) root.Right = e;
                else Insert(root.Right, e);
            }
        }
    }
}