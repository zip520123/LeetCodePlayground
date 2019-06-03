import UIKit
import XCTest
class Solution : XCTestCase {
    public func solution(_ N : Int) -> Int {
        let s = String(N)
        let sArray = s.map { $0 }
        var intArray = [Int]()
        for item in sArray {
            if Int(String(item)) != nil {
                intArray.append(Int(String(item))!)
            }else {
                return 1
            }
        }
        let intSet = Set(intArray)
        if intSet.count <= 1 {
            return 1
        }else {
            var result = 1
            for i in 1...intSet.count {
                result = result * i
            }
            return result
        }
        
        
    }
    func test1(){
        var input = 1213

        let output = 12
        XCTAssert(solution(input) == output)
    }
//    func test2(){
//        var input = 123
//
//        let output = 6
//        XCTAssert(solution(input) == output)
//    }
    
}
Solution.defaultTestSuite.run()
