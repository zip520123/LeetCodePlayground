//Count the number of prime numbers less than a non-negative number, n.
//
//Example:
//
//Input: 10
//Output: 4
//Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
import XCTest
class Solution: XCTestCase {
    func countPrimes(_ n: Int) -> Int {
        return 0
    }
    func test1() {
        let input = 10
        let output = 4
        XCTAssert(countPrimes(input) == output)
    }
}
Solution.defaultTestSuite.run()
