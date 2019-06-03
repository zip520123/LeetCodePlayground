
//Given a binary tree, determine if it is a valid binary search tree (BST).
//
//Assume a BST is defined as follows:
//
//The left subtree of a node contains only nodes with keys less than the node's key.
//The right subtree of a node contains only nodes with keys greater than the node's key.
//Both the left and right subtrees must also be binary search trees.
//Example 1:
//
//Input:
//2
/// \
//1   3
//Output: true
//Example 2:
//
//5
/// \
//1   4
/// \
//3   6
//Output: false
//Explanation: The input is: [5,1	,4,null,null,3,6]. The root node's value
//is 5 but its right child's value is 4.


class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        if root == nil {return true}
        var root = root
        var stack = [TreeNode]()
        var prev :TreeNode? = nil
        while root != nil || !stack.isEmpty{
            while root != nil {
                stack.append(root!)
                root = root?.left
            }
            root = stack.popLast()
            if prev != nil && root!.val <= prev!.val {return false}
            prev = root
            root = root?.right
            
        }
        return true
    }
}
