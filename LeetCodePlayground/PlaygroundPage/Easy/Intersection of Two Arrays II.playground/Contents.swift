import XCTest
//Given two arrays, write a function to compute their intersection.
//
//Example 1:
//
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2,2]
//Example 2:
//
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [4,9]
//Note:
//
//Each element in the result should appear as many times as it shows in both arrays.
//The result can be in any order.
//Follow up:
//
//What if the given array is already sorted? How would you optimize your algorithm?
//What if nums1's size is small compared to nums2's size? Which algorithm is better?
//What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
class Solution : XCTestCase {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var i = 0 , j = 0
        let nums1 = nums1.sorted()
        let nums2 = nums2.sorted()
        var res = [Int]()
        while nums1.count > i && nums2.count > j {
            if nums1[i] == nums2[j] {
                res.append(nums1[i])
                i += 1; j += 1
            }else if nums1[i] < nums2[j]{
                i += 1
            }else{
                j += 1
            }
        
        }
        return res
    }
    func test1(){
        let input = [1,2,2,1]
        let input2 = [2,2]
        let output = [2,2]
        XCTAssert(intersect(input, input2) == output)
    }
    func test2(){
        let input = [4,9,5]
        let input2 = [9,4,9,8,4]
        let output = [4,9]
        XCTAssert(intersect(input, input2) == output)
    }
}
Solution.defaultTestSuite.run()
