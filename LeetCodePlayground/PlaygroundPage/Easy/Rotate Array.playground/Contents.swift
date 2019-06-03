
//Given an array, rotate the array to the right by k steps, where k is non-negative.
//
//Example 1:
//
//Input: [1,2,3,4,5,6,7] and k = 3
//Output: [5,6,7,1,2,3,4]
//Explanation:
//rotate 1 steps to the right: [7,1,2,3,4,5,6]
//rotate 2 steps to the right: [6,7,1,2,3,4,5]
//rotate 3 steps to the right: [5,6,7,1,2,3,4]
//Example 2:
//
//Input: [-1,-100,3,99] and k = 2
//Output: [3,99,-1,-100]
//Explanation:
//rotate 1 steps to the right: [99,-1,-100,3]
//rotate 2 steps to the right: [3,99,-1,-100]
//Note:
//
//Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
//Could you do it in-place with O(1) extra space?
import UIKit
import XCTest
class Solution : XCTestCase {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for _ in 0..<k{
            guard let last = nums.popLast() else {return}
            nums.insert(last, at: 0)
        }
        
    }
    func test1(){
        var input = [1,2,3,4,5,6,7]
        let k = 3
        rotate(&input, k)
        let output = [5,6,7,1,2,3,4]
        XCTAssert(input == output)
    }
    func test2(){
        var input = [-1,-100,3,99]
        let k = 2
        rotate(&input, k)
        let output = [3,99,-1,-100]
        XCTAssert(input == output)
    }
    
}
Solution.defaultTestSuite.run()


