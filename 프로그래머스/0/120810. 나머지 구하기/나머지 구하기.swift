import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard num1 >= 0 && num1 <= 100 else { return -1 }
    guard num2 >= 0 && num2 <= 100 else { return -1 }
    return num1 % num2
}