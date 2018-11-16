using System;
using System.Collections.Generic;

namespace DynamicStructures
{
    class AVLTreeElement : BinaryTreeElementBase<AVLTreeElement>
    {
        public int Val { get; set; }
        public int Height { get; set; } = -1;

        public void UpdateHeight()
        {
            Height = 1 + Math.Max(Left != null ? Left.Height : -1, Right != null ? Right.Height : -1);
        }
        public AVLTreeElement Left { get; set; }
        public AVLTreeElement Right { get; set; }
    }

    class AVLTree : BinaryTree<AVLTreeElement>
    {
        public override bool Contains(int val)
        {
            AVLTreeElement cur = Root;

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

        public override void DeleteValue(int val)
        {
            // AVLTreeElement cur = Root;
            // AVLTreeElement prev = null;

            // while (cur != null)
            // {
            //     if (val == cur.Val)
            //     {
            //         // Leaf
            //         if (cur.Left == null && cur.Right == null)
            //         {
            //             if (prev == null) Root = null;
            //             else
            //             {
            //                 if (val <= prev.Val) prev.Left = null;
            //                 else prev.Right = null;
            //             }
            //         }
            //         // 2 Follower
            //         else if (cur.Left != null && cur.Right != null)
            //         {
            //             AVLTreeElement inOrderMinValueRight = cur.Right;

            //             while (inOrderMinValueRight.Left != null)
            //             {
            //                 inOrderMinValueRight = inOrderMinValueRight.Left;
            //             }

            //             if (prev == null)
            //             {
            //                 Root = inOrderMinValueRight;
            //                 Root.Left = cur.Left;
            //                 Root.Right = cur.Right;
            //             }
            //             else
            //             {
            //                 if (val <= prev.Val)
            //                 {
            //                     prev.Left = inOrderMinValueRight;
            //                     prev.Left.Left = cur.Left;
            //                     if (inOrderMinValueRight != cur.Right)
            //                     {
            //                         prev.Left.Right = cur.Right;
            //                     }
            //                 }
            //                 else
            //                 {
            //                     prev.Right = inOrderMinValueRight;
            //                     prev.Right.Left = cur.Left;
            //                     if (inOrderMinValueRight != cur.Right)
            //                     {
            //                         prev.Right.Right = cur.Right;
            //                     }
            //                 }
            //             }
            //         }
            //         // 1 Follower
            //         else
            //         {
            //             if (prev == null) Root = cur.Left ?? cur.Right;
            //             else
            //             {
            //                 if (val <= prev.Val) prev.Left = cur.Left ?? cur.Right;
            //                 else prev.Right = cur.Left ?? cur.Right;
            //             }
            //         }

            //         break;
            //     }
            //     else
            //     {
            //         prev = cur;

            //         if (val <= cur.Val) cur = cur.Left;
            //         else cur = cur.Right;
            //     }
            // }
        }

        public override void Insert(int val)
        {
            var e = new AVLTreeElement { Val = val };

            if (Root == null)
            {
                Root = e;
            }
            else
            {
                Insert(Root, e);
            }
        }

        public void Insert(AVLTreeElement root, AVLTreeElement e)
        {
            if (e.Val <= root.Val)
            {
                if (root.Left == null) root.Left = e;
                else
                {
                    Insert(root.Left, e);
                    CheckRotationRight(ref e);
                }
            }
            else
            {
                if (root.Right == null) root.Right = e;
                else
                {
                    Insert(root.Right, e);
                    CheckRotationLeft(ref e);
                }
            }
        }

        private void RotateLeft(ref AVLTreeElement e)
        {
            AVLTreeElement b = e.Right;

            e.Right = b.Left;
            b.Left = e;
            e = b;

            e.Left.UpdateHeight();
            e.UpdateHeight();
        }

        private void RotateRight(ref AVLTreeElement e)
        {
            AVLTreeElement b = e.Left;

            e.Left = b.Right;
            b.Right = e;
            e = b;

            e.Right.UpdateHeight();
            e.UpdateHeight();
        }

        private void DoubleRotationLeft(ref AVLTreeElement e)
        {
            AVLTreeElement right = e.Right;

            RotateRight(ref right);
            RotateLeft(ref e);
        }

        private void DoubleRotationRight(ref AVLTreeElement e)
        {
            AVLTreeElement left = e.Left;

            RotateLeft(ref left);
            RotateRight(ref e);
        }

        private void CheckRotationRight(ref AVLTreeElement e)
        {
            if (e != null)
            {
                if (e.Left != null)
                {
                    if (Math.Abs(e.Left.Height - e.Right.Height) == 2)
                    {
                        if (e.Left.Right.Height > e.Left.Right.Height)
                        {
                            DoubleRotationRight(ref e);
                        }
                        else
                        {
                            RotateRight(ref e);
                        }
                    }
                    else
                    {
                        e.UpdateHeight();
                    }
                }
                else
                {
                    e.UpdateHeight();
                }
            }
        }

        private void CheckRotationLeft(ref AVLTreeElement e)
        {
            if (e != null)
            {
                if (e.Right != null)
                {
                    if (Math.Abs(e.Right.Height - e.Left.Height) == 2)
                    {
                        if (e.Right.Right.Height > e.Right.Right.Height)
                        {
                            DoubleRotationLeft(ref e);
                        }
                        else
                        {
                            RotateRight(ref e);
                        }
                    }
                    else
                    {
                        e.UpdateHeight();
                    }
                }
                else
                {
                    e.UpdateHeight();
                }
            }
        }
    }
}