func solution(_ n:Int) -> Int {
    func isPrimeNumber(_ n: Int) -> Bool {
        var i = 2
        
        while i * i <= n {
            if n % i == 0 { return false }
            i += 1
        }
        
        return true
    }
    
    var count = 0
    
    for num in 2...n {
        if isPrimeNumber(num) { count += 1 }
    }
    
    return count
}