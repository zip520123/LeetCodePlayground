
//Count the number of prime numbers less than a non-negative number, n.
//
//Example:
//
//Input: 10
//Output: 4
//Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.

class Solution {
    func countPrimes(_ n: Int) -> Int {
        var isPrime = [Bool]()
        (0..<n).forEach { _ in isPrime.append(true) }
        
        var i = 2
        while (i * i < isPrime.count) {
            if isPrime[i] {
                var j = i
                while (i * j < isPrime.count) {
                    isPrime[i * j] = false
                    j += 1
                }
            }
            i += 1
        }
        
        var index = 2
        var count = 0
        while (index < isPrime.count) {
            if isPrime[index] == true {
                count += 1
            }
            
            index += 1
        }
        
        return count
    }
}

print(4 == Solution().countPrimes(10))
print(1 == Solution().countPrimes(3))
