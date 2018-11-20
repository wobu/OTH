using System;
using System.Collections.Generic;

namespace DynamicStructures
{
    class AVLTreeElement : BinaryTreeElementBase<AVLTreeElement>
    {
        public int Val { get; set; }
        public int Height { get; set; } = 0;

        public void UpdateHeight()
        {
            Height = Math.Max(Left != null ? 1 + Left.Height : 0, Right != null ? 1 + Right.Height : 0);
        }

        // had to provide this as variable to use the ref keyword....
        // ref on Properties aren't possible
        public AVLTreeElement left;
        public AVLTreeElement right;

        public AVLTreeElement Left { get { return left; } }
        public AVLTreeElement Right { get { return right; } }

        public bool IsLeaf()
        {
            return Left == null && Right == null;
        }

        public override string ToString()
        {
            return $"{Val} [h: {Height}]";
        }
    }

    class AVLTree : BinaryTree<AVLTreeElement>
    {
        public bool Debug { get; set; }

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
            DeleteValue(ref root, val);
        }
        public void DeleteValue(ref AVLTreeElement e, int val)
        {
            if (val == e.Val)
            {
                if (e.IsLeaf())
                {
                    e = null;
                }
                // 2 Follower
                else if (e.Left != null && e.Right != null)
                {
                    AVLTreeElement inOrderMinValueRight = e.Right;

                    while (inOrderMinValueRight.Left != null)
                    {
                        inOrderMinValueRight = inOrderMinValueRight.Left;
                    }

                    inOrderMinValueRight.left = e.Left;
                    if (e.Right != inOrderMinValueRight) inOrderMinValueRight.right = e.Right;
                    e.left = null;
                    e.right = null;
                    e = inOrderMinValueRight;
                }
                // 1 Follower
                else
                {
                    e = e.Left ?? e.Right;
                }
            }
            else
            {
                if (val <= e.Val && e.Left != null)
                {
                    DeleteValue(ref e.left, val);
                    CheckRotationLeft(ref e);
                }
                else if (e.Right != null)
                {
                    DeleteValue(ref e.right, val);
                    CheckRotationRight(ref e);
                }
            }
        }

        public override void Insert(int val)
        {
            var e = new AVLTreeElement { Val = val };

            if (Debug) Console.WriteLine($"[Debug] Insert {e}");

            if (Root == null)
            {
                Root = e;
            }
            else
            {
                Insert(ref this.root, e);
            }
        }

        public void Insert(ref AVLTreeElement root, AVLTreeElement e)
        {
            if (e.Val <= root.Val)
            {
                if (root.Left == null) root.left = e;
                else Insert(ref root.left, e);

                CheckRotationRight(ref root);
            }
            else
            {
                if (root.Right == null) root.right = e;
                else Insert(ref root.right, e);

                CheckRotationLeft(ref root);
            }
        }

        private void RotateLeft(ref AVLTreeElement e)
        {
            if (Debug) Console.WriteLine($"[Debug] RotateLeft {e}");

            AVLTreeElement newRoot = e.Right;

            e.right = newRoot.left;
            newRoot.left = e;
            e = newRoot;

            e.Left.UpdateHeight();
            if (e.Right != null) e.Right.UpdateHeight();
            e.UpdateHeight();
        }

        private void RotateRight(ref AVLTreeElement e)
        {
            if (Debug) Console.WriteLine($"[Debug] RotateRight {e}");

            AVLTreeElement newRoot = e.Left;

            e.left = newRoot.Right;
            newRoot.right = e;
            e = newRoot;

            e.Right.UpdateHeight();
            if (e.Left != null) e.Left.UpdateHeight();
            e.UpdateHeight();
        }

        private void DoubleRotationLeft(ref AVLTreeElement e)
        {
            if (Debug) Console.WriteLine($"[Debug] DoubleRotationLeft {e}");

            RotateRight(ref e.right);
            RotateLeft(ref e);
        }

        private void DoubleRotationRight(ref AVLTreeElement e)
        {
            if (Debug) Console.WriteLine($"[Debug] DoubleRotationRight {e}");

            RotateLeft(ref e.left);
            RotateRight(ref e);
        }

        private bool ValidateChildHeights(AVLTreeElement e)
        {
            var leftHeight = e.Left != null ? 1 + e.Left.Height : 0;
            var rightHeight = e.Right != null ? 1 + e.Right.Height : 0;

            return Math.Abs(leftHeight - rightHeight) <= 1;
        }

        private void CheckRotationRight(ref AVLTreeElement e)
        {
            if (e != null)
            {
                if (e.Left != null)
                {
                    if (!ValidateChildHeights(e))
                    {
                        if ((e?.Left?.Right?.Height + 1 ?? 0) > (e?.Left?.Left?.Height + 1 ?? 0))
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
                    if (!ValidateChildHeights(e))
                    {
                        if ((e?.Right?.Left?.Height + 1 ?? 0) > (e?.Right?.Right?.Height + 1 ?? 0))
                        {
                            DoubleRotationLeft(ref e);
                        }
                        else
                        {
                            RotateLeft(ref e);
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