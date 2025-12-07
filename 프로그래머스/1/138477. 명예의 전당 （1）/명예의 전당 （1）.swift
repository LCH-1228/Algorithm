import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var rankList = [Int]()
    var result = [Int]()
    
    for s in score {
        rankList.append(s)
        rankList.sort(by: <)
        
        if rankList.count > k {
            rankList.removeFirst()
        }
        
        result.append(rankList.first!)
    }
    
    return result
}