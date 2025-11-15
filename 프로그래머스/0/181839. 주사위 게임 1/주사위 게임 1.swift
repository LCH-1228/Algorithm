import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    switch (a & 1, b & 1) {
    case (1, 1):
        return a * a + b * b
    case (0, 1), (1, 0):
        return (a + b) * 2
    default:
        return abs(a - b)
    }
}
