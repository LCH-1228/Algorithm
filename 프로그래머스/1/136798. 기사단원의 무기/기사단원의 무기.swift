import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var divisorCount = Array(repeating: 0, count: number + 1)
    
    // 약수 대신 배수 계산 방법도 가능
    for i in 1...number {
        var j = i
        while j <= number {
            divisorCount[j] += 1
            j += i
        }
    }
    
    return (1...number).reduce(0) { result, knight in
        let attack = divisorCount[knight]
        if attack > limit {
            return result + power
        } else {
            return result + attack
        }
    }
}