import UIKit
import XCTest
class Solution : XCTestCase {
    public func solution(_ N : Int) {
        for i in 1...N{
            
            if i % 2 == 0 {
                print("Codility",terminator :"")
            }
            if i % 3 == 0 {
                print("Test",terminator :"")
            }
            if i % 5 == 0 {
                print("Coders",terminator : "")
            }
            if i % 2 != 0 && i % 3 != 0 && i % 5 != 0 {
                print(i ,terminator: "")
            }
            print("")

            
        }
    }


}
Solution().solution(24)
