//Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
//
//Note: For the purpose of this problem, we define empty string as valid palindrome.
//
//Example 1:
//
//Input: "A man, a plan, a canal: Panama"
//Output: true
//Example 2:
//
//Input: "race a car"
//Output: false
import UIKit
import XCTest
class Solution : XCTestCase{
    func isPalindrome(_ s: String) -> Bool {
        return false
    }
    func test1(){
        let input = "A man, a plan, a canal: Panama"
        let output = true
        XCTAssert(isPalindrome(input) == output)
    }
    func test2(){
        let input = "race a car"
        let output = false
        XCTAssert(isPalindrome(input) == output)
    }
}
Solution.defaultTestSuite.run()
