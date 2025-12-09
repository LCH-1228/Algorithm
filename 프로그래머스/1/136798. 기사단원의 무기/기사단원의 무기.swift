import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    func factor(_ n: Int) -> Int {
        var count = 0
        var divisor = 1
        
        while divisor * divisor <= n {
            if n % divisor == 0 {
                count = (divisor * divisor == n) ? count + 1 : count + 2
            }
            divisor += 1
        }
        
        return count
    }
    
    let knightsList = Array(1...number)
    
    return knightsList.reduce(0) { result, knight in
        let attack = factor(knight)
        if attack > limit {
            return result + power
        } else {
            return result + attack
        }
    }
}