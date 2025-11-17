import Foundation

func solution(_ strArr:[String]) -> Int {
    var countDic = [Int: Int]()
    
    for str in strArr {
        countDic[str.count, default: 0] += 1
    }
    
    return countDic.values.max() ?? 0
}