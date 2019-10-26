//Power of Three
//Given an integer, write a function to determine if it is a power of three.
//
//Example 1:
//
//Input: 27
//Output: true
//Example 2:
//
//Input: 0
//Output: false
//Example 3:
//
//Input: 9
//Output: true
//Example 4:
//
//Input: 45
//Output: false
//Follow up:
//Could you do it without using any loop / recursion?

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n < 1 { return false }
        var tn = n
        while tn % 3 == 0 {
            tn /= 3
        }
        
        return tn == 1
    }
}
print(Solution().isPowerOfThree(27) == true)
print(Solution().isPowerOfThree(0) == false)
print(Solution().isPowerOfThree(9) == true)
print(Solution().isPowerOfThree(45) == false)

