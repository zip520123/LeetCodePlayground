import Foundation

import XCTest

class Solution : XCTestCase {
    public func solution(_ A : inout [Int]) -> Int {
        var value = A[0]
        var count = 1
        while value != -1 {
            count += 1
            value = A[value]
        }
        return count
    }
    func test1(){
        var input = [1,4,-1,3,2]
        
        let output = 4
        XCTAssert(solution(&input) == output)
    }
    func test2(){
        var input = [-1]
        
        let output = 1
        XCTAssert(solution(&input) == output)
    }
    func test3(){
        var input = [1,-1]
        let output = 2
        XCTAssert(solution(&input) == output)
    }
}
Solution.defaultTestSuite.run()
