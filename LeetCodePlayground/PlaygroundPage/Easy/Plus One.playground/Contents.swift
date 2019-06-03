
import XCTest
//Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
//
//The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
//
//You may assume the integer does not contain any leading zero, except the number 0 itself.
//
//Example 1:
//
//Input: [1,2,3]
//Output: [1,2,4]
//Explanation: The array represents the integer 123.
//Example 2:
//
//Input: [4,3,2,1]
//Output: [4,3,2,2]
//Explanation: The array represents the integer 4321.

class Solution : XCTestCase{
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for i in stride(from: digits.count - 1, to: -1, by: -1) {
            if result[i] == 9 {
                result[i] = 0
            }else{
                result[i] += 1
                return result
            }
        }
        if result[0] == 0 {
            result.insert(1, at: 0)
        }
        return result
        
        
//        var result = digits
//
//        for i in stride(from: digits.count-1, to: -1, by: -1) {
//            if digits[i] == 9 {
//                result[i] = 0
//            }
//            else {
//                result[i] += 1
//                return result
//            }
//        }
//        if result.first == 0{
//            result.insert(1, at: 0)
//        }
//        return result
    }
    func test1(){
        let input = [1,2,3]
        let output = [1,2,4]
        XCTAssert(plusOne(input) == output)
    }
    func test2(){
        let input = [4,3,2,1]
        let output = [4,3,2,2]
        XCTAssert(plusOne(input) == output)
    }
}
Solution.defaultTestSuite.run()
