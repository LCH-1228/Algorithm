import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    if n < a {
        return 0
    }
    
    let exchanged = (n / a) * b
    let leftBottle = n % a
    let emptyBottle = exchanged + leftBottle
    
    return exchanged + solution(a, b, emptyBottle)
}