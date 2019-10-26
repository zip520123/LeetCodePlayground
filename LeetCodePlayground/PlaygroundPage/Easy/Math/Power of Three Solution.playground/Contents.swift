//Write a program that outputs the string representation of numbers from 1 to n.
//
//But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

//n = 15,
//
//Return:
//[
//"1",
//"2",
//"Fizz",
//"4",
//"Buzz",
//"Fizz",
//"7",
//"8",
//"Fizz",
//"Buzz",
//"11",
//"Fizz",
//"13",
//"14",
//"FizzBuzz"
//]

class Solution {
  func fizzBuzz(_ n: Int) -> [String] {
    var arr = [String]()
    for i in 0..<n {
      let t = i + 1
      if t % 3 == 0 && t % 5 == 0{
        arr.append("FizzBuzz")
      } else if t % 3 == 0 {
        arr.append("Fizz")
      } else if t % 5 == 0 {
        arr.append("Buzz")
      } else {
        arr.append(String(t))
      }
    }
    return arr
  }
}

let ans = [
  "1",
  "2",
  "Fizz",
  "4",
  "Buzz",
  "Fizz",
  "7",
  "8",
  "Fizz",
  "Buzz",
  "11",
  "Fizz",
  "13",
  "14",
  "FizzBuzz"
]

print(Solution().fizzBuzz(15) == ans)
