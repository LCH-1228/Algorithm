import Foundation

func solution(_ numList:[Int]) -> [Int] {
    var result = numList
    let a = numList[numList.count - 2]
    let b = numList[numList.count - 1]
    
    result.append(b > a ? b - a : b * 2)
    return result
}