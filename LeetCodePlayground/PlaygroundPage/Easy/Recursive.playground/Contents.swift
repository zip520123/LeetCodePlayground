func sm(_ n : Int) -> Int {
    if n <= 0 {
        return 0
    }
    return (n + sm(n - 1))
}
sm(10)

func fab(_ num : Int) -> Int {
    var result = [0,1]
    for i in 2...num {
        result.append(result[i - 1] + result[i - 2])
    }
    return result[num]
}
func fabRec(_ num: Int) -> Int {
    if num < 2 {return num}
    return fabRec(num - 1) + fabRec(num - 2)
}
fabRec(10)
