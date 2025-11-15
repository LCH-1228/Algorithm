import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let numAB = Int(String(a) + String(b)) ?? 0
    let numBA = Int(String(b) + String(a)) ?? 0
    return numAB >= numBA ? numAB : numBA
}