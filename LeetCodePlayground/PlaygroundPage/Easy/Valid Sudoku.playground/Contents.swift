//: Playground - noun: a place where people can play
import XCTest

//Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
//
//Each row must contain the digits 1-9 without repetition.
//Each column must contain the digits 1-9 without repetition.
//Each of the 9 3x3 sub-boxes of the grid must contain the digits 1-9 without repetition.
//
//A partially filled sudoku which is valid.
//
//The Sudoku board could be partially filled, where empty cells are filled with the character '.'.

class Solution : XCTestCase{
    func isValidSudoku2(_ board: [[Character]]) -> Bool {
        var dic = [Character:[CGPoint]]()
        for i in 0...board.count - 1 {
            let lineArr = board[i]
            
            for j in 0...lineArr.count - 1 {
                let ch = lineArr[j]
                if ch == "." {continue}
                var arr = dic[ch]
                
                if arr != nil {
                    for point in arr! {
                        if Int(point.x) == i || Int(point.y) == j {
                            return false
                        }
                        if Int(point.x) / 3 == i / 3 && Int(point.y) / 3 == j / 3 {
                            return false
                        }
                    }
                }else {
                    arr = [CGPoint]()
                }
                arr?.append(CGPoint.init(x: CGFloat(i), y: CGFloat(j)))
                dic[ch] = arr!
            }
        }
        return true
    }
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var dic = [Character : [CGPoint]]()
        for i in 0..<board.count {
            let lineArr = board[i]
            for j in 0..<lineArr.count {
                let ch = lineArr[j]
                if ch == "." {continue}
                if dic[ch] == nil {
                    dic[ch] = [CGPoint]()
                }else{
                    for point in dic[ch]! {
                        if Int(point.x) == i || Int(point.y) == j {
                            return false
                        }
                        if Int(point.x) / 3 == i / 3 && Int(point.y) / 3 == j / 3 {
                            return false
                        }
                    }
                }
                dic[ch]?.append(CGPoint(x:CGFloat(i),y:CGFloat(j)))
            }
            
        }
        return true
    }
    func test1(){
        let input : [[Character]] =
        [
        ["5","3",".",".","7",".",".",".","."],
        ["6",".",".","1","9","5",".",".","."],
        [".","9","8",".",".",".",".","6","."],
        ["8",".",".",".","6",".",".",".","3"],
        ["4",".",".","8",".","3",".",".","1"],
        ["7",".",".",".","2",".",".",".","6"],
        [".","6",".",".",".",".","2","8","."],
        [".",".",".","4","1","9",".",".","5"],
        [".",".",".",".","8",".",".","7","9"]
        ]
        let output = true
        
        XCTAssert(isValidSudoku(input) == output)
    }
    func test2(){
        let input : [[Character]] =
        [
        ["8","3",".",".","7",".",".",".","."],
        ["6",".",".","1","9","5",".",".","."],
        [".","9","8",".",".",".",".","6","."],
        ["8",".",".",".","6",".",".",".","3"],
        ["4",".",".","8",".","3",".",".","1"],
        ["7",".",".",".","2",".",".",".","6"],
        [".","6",".",".",".",".","2","8","."],
        [".",".",".","4","1","9",".",".","5"],
        [".",".",".",".","8",".",".","7","9"]
        ]
        let output = false
        XCTAssert(isValidSudoku(input) == output)
//        Explanation: Same as Example 1, except with the 5 in the top left corner being
//        modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
    }
    
}
Solution.defaultTestSuite.run()
