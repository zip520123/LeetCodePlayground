//Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
//
//Note:
//
//The number of elements initialized in nums1 and nums2 are m and n respectively.
//You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
//Example:
//
//Input:
//nums1 = [1,2,3,0,0,0], m = 3
//nums2 = [2,5,6],       n = 3
//
//Output: [1,2,2,3,5,6]
import XCTest
class Solution: XCTestCase {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let a = nums1[0..<m] + nums2[0..<n]
        nums1 = Array(a).sorted()
    }
    func test1() {
        var input1 = [1,2,3,0,0,0]
        let m = 3
        let input2 = [2,5,6]
        let n = 3
        let output = [1,2,2,3,5,6]
        merge(&input1, m, input2, n)
        
        XCTAssert(input1 == output)
    }
}
Solution.defaultTestSuite.run()


