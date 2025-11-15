import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()
    let todayStringArray = today.split(separator: ".").map(String.init)
    let todayArray = todayStringArray.map({ Int($0)! })
    let todayDayCount = todayArray[0] * 12 * 28 + todayArray[1] * 28 + todayArray[2]
    
    let termsDic = Dictionary<String, Int>(uniqueKeysWithValues : terms.compactMap {
        let keyValue = $0.split(separator: " ")
        guard keyValue.count == 2, let value = Int(keyValue[1]) else { return nil }
        return (String(keyValue[0]), value)
    })
    
    for (index, privacy) in privacies.enumerated() {
        let termPartsArray = privacy.split(separator:" ")
        var termParts = String(termPartsArray[1])
        guard let termsValue = termsDic[termParts] else { continue }
        
        let dateStringArray = termPartsArray[0].split(separator: ".").map(String.init)
        let dateArray = dateStringArray.map( { Int($0)! })
        
        let privacyYear = dateArray[0] * 12 * 28
        let privacyMonth = dateArray[1] * 28
        let privacyDay = dateArray[2]
        let expireDayCount = privacyYear + privacyMonth + privacyDay + termsValue * 28 - 1
        
        if todayDayCount > expireDayCount {
            result.append(index + 1)
        }
    }
    return result
}