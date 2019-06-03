
//Given two strings s and t , write a function to determine if t is an anagram of s.
//
//Example 1:
//
//Input: s = "anagram", t = "nagaram"
//Output: true
//Example 2:
//
//Input: s = "rat", t = "car"
//Output: false
//Note:
//You may assume the string contains only lowercase alphabets.
//
//Follow up:
//What if the inputs contain unicode characters? How would you adapt your solution to such case?
import UIKit
import XCTest
class Solution : XCTestCase{
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.isEmpty && t.isEmpty {return true}
        
        var dictS = [Character:Int]()
        var dictT = [Character:Int]()
        for ch in s {
            if dictS[ch] != nil {
                dictS[ch]! += 1
            }
            else {
                dictS[ch]  = 1
            }
        }
        for ch in t {
            if dictT[ch] != nil {
                dictT[ch]! += 1
            }
            else {
                dictT[ch]  = 1
            }
        }
        return dictS == dictT
        
    }
    func test1(){
        let s = "anagram", t = "nagaram"
        let output = true
        XCTAssert(isAnagram(s, t) == output)
        
    }
    func test2(){
        let s = "rat", t = "car"
        let output = false
        XCTAssert(isAnagram(s, t) == output)
    }
}
Solution.defaultTestSuite.run()
