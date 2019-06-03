//You are climbing a stair case. It takes n steps to reach to the top.
//
//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
//
//Note: Given n will be a positive integer.
//
//Example 1:
//
//Input: 2
//Output: 2
//Explanation: There are two ways to climb to the top.
//1. 1 step + 1 step
//2. 2 steps
//Example 2:
//
//Input: 3
//Output: 3
//Explanation: There are three ways to climb to the top.
//1. 1 step + 1 step + 1 step
//2. 1 step + 2 steps
//3. 2 steps + 1 step
import XCTest
class Solution : XCTestCase {
    
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        var res: [Int] = [1, 2]
        
        for i in 2..<n {
            res.append(res[i - 1] + res[i - 2])
        }
        
        return res[n - 1]
    }
    func test1(){
        let input = 2
        let output = 2
        XCTAssert(climbStairs(input) == output)
    }
    func test2(){
        let input = 3
        let output = 3
        XCTAssert(climbStairs(input) == output)
    }
}


