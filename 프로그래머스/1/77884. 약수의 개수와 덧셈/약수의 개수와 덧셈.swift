import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    func factor (_ n: Int) -> Int {
        var count = 0
        var x = 1
        
        while x * x <= n {
            if n % x == 0 {
                count = (x * x == n) ? count + 1 : count + 2
            }
            x += 1
        }
        
        return count
    }
    
    return (left...right).reduce(0) {
        return (factor($1) % 2 == 0) ? $0 + $1 : $0 - $1
    }
}