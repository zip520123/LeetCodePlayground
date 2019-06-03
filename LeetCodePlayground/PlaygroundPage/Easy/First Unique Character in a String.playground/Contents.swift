//: Playground - noun: a place where people can play

import UIKit
import XCTest

//s = "leetcode"
//return 0.
//
//s = "loveleetcode",
//return 2.
class Solution : XCTestCase {
    func firstUniqChar(_ s: String) -> Int {

        let sa = Array(s.utf8)
        var existC = [Int]()
        for i in 0..<sa.count {
            var needContinu = false
            for j in (i + 1)..<sa.count{
                print( i , j , sa[i].hashValue , sa[j].hashValue)
                if sa[i].hashValue == sa[j].hashValue {
                    existC.append(sa[i].hashValue)
                    if i == sa.count - 1 {
                        return -1
                    }
                    needContinu = true
                    break
                }
            }
            if needContinu || (existC.index(of: sa[i].hashValue) != nil){continue}
            return i
        }
        return -1
    }
    func test1(){
        let input = "leetcode"
        let output = 0
        XCTAssert(output == firstUniqChar(input))
    }
    func test2(){
        let input = "loveleetcode"
        let output = 2
        XCTAssert(output == firstUniqChar(input))
    }
    func test3(){
        let input = "aabb"
        let output = -1
        XCTAssert(output == firstUniqChar(input))
    }
}
Solution.defaultTestSuite.run()
