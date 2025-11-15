import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let firstCalculation = Int(String(a) + String(b)) ?? 0
    let secondCalculation = 2 * a * b
    return firstCalculation >= secondCalculation ? firstCalculation : secondCalculation
}