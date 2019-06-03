import XCTest
//Given an array of integers, find if the array contains any duplicates.
//
//Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
//
//Example 1:
//
//Input: [1,2,3,1]
//Output: true
//Example 2:
//
//Input: [1,2,3,4]
//Output: false
//Example 3:
//
//Input: [1,1,1,3,3,4,3,2,4,2]
//Output: true

class Solution : XCTestCase {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return nums.count != Set(nums).count
    }
    func test1(){
        let input = [1,2,3,1]
        let output = true
        XCTAssert(containsDuplicate(input) == output)
    }
    func test2(){
        let input = [1,2,3,4]
        let output = false
        XCTAssert(containsDuplicate(input) == output)
    }
    func test3(){
        let input = [1,1,1,3,3,4,3,2,4,2]
        let output = true
        XCTAssert(containsDuplicate(input) == output)
    }
}
Solution.defaultTestSuite.run()
