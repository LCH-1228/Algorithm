import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    if (num1 >= -50000 && num1 <= 50000) && (num2 >= -50000 && num2 <= 50000) { 
        return num1 + num2
    } else {
        return 0
    }
}