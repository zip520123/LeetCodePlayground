//Given a binary tree, find its maximum depth.
//
//The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
//
//Note: A leaf is a node with no children.
//
//Example:
//
//Given binary tree [3,9,20,null,null,15,7],
//
//3
/// \
//9  20
///  \
//15   7
//return its depth = 3.
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
import XCTest
class Solution : XCTestCase{
    func maxDepth(_ root: TreeNode?) -> Int {
        return root == nil ? 0 : 1 + (max(maxDepth(root?.left) , maxDepth(root?.right)))
    }
    func test1(){
        let root = TreeNode(3)
        let tree9 = TreeNode(9)
        let tree20 = TreeNode(20)
        let tree15 = TreeNode(15)
        let tree7 = TreeNode(7)
        root.left = tree9
        root.right = tree20
        tree20.left = tree15
        tree20.right = tree7
        let input = root
        let output = 3
        let answer = maxDepth(input)
        XCTAssert(answer == output)
        
    }
}
Solution.defaultTestSuite.run()
