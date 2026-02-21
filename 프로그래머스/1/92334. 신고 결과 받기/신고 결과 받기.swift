import Foundation

func solution(_ idList:[String], _ reports:[String], _ k:Int) -> [Int] {
    var countDict = [String : Int]()
    var reportDiction = [String : [String]]()
    var result = [Int]()
    
    for report in Set(reports) {
        let user = report.split(separator: " ").map(String.init)
        reportDiction[user[0], default: []].append(user[1])
        countDict[user[1], default: 0] += 1
    }
    
    for id in idList {
        var totalCount = 0
        if let blockList = reportDiction[id], !blockList.isEmpty {
            for block in blockList {
                if let count = countDict[block], count >= k {
                    totalCount += 1
                }
            }
        }
        result.append(totalCount)
    }
    
    return result
}