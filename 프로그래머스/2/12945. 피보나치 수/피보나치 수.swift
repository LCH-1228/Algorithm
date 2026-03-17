func solution(_ n:Int) -> Int {
    var fibo = [0, 1]
    
    for i in 2...n {
        let next = fibo[i - 2] + fibo[i - 1]
        fibo.append(next % 1234567)
    }
    
    return fibo[n]
}