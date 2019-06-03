
import UIKit
import XCTest
//
//You are given an n x n 2D matrix representing an image.
//
//Rotate the image by 90 degrees (clockwise).
//
//Note:
//
//You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
//

class Solution : XCTestCase {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        for i in 0..<n {
            for j in (i + 1)..<n {
                if (i != j) {
                    // XOR Swap Trick
                    matrix[i][j] = matrix[i][j] ^ matrix[j][i]
                    matrix[j][i] = matrix[i][j] ^ matrix[j][i]
                    matrix[i][j] = matrix[i][j] ^ matrix[j][i]
                }
            }
            matrix[i].reverse()
        }
        let a = "a"
        a.reversed()
    }
    func test1(){
        var input = [[1,2,3],
                     [4,5,6],
                     [7,8,9]]
        rotate(&input)
        let output = [[7,4,1],
                      [8,5,2],
                      [9,6,3]]
        XCTAssert(input == output)
    }
    func test2(){
        var input = [
            [ 5, 1, 9,11],
            [ 2, 4, 8,10],
            [13, 3, 6, 7],
            [15,14,12,16]
        ]
        let output = [
            [15,13, 2, 5],
            [14, 3, 4, 1],
            [12, 6, 8, 9],
            [16, 7,10,11]
        ]
        rotate(&input)
        XCTAssert(input == output)
    }

}
func ==(left: [[Int]] , right : [[Int]]) -> Bool {
    for (item ,jtem) in zip(left,right){
        for (item2 , jtem2) in zip(item, jtem){
            if item2 != jtem2 {return false}
        }
    }
    
    return true
}
Solution.defaultTestSuite.run()
