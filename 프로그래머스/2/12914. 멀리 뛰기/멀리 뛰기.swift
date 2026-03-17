func solution(_ n:Int) -> Int {
    guard n > 1 else { return 1 }
    
    var fibo = [1, 1]
    
    for i in 2...n {
        let next = fibo[i - 2] + fibo[i - 1]
        fibo.append(next % 1234567)
    }
    
    return fibo[n]
}