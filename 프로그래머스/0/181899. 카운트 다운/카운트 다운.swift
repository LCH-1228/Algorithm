import Foundation

func solution(_ startNum:Int, _ endNum:Int) -> [Int] {
    return Array(stride(from: startNum, through: endNum, by: -1))
}