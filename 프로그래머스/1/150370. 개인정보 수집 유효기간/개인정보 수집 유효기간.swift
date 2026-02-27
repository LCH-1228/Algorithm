import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()
    var termsDict = [String : Int]()
    let todayDate = today.split(separator: ".").compactMap { Int($0) }
    
    for term in terms {
        let split = term.split(separator: " ")
        termsDict[String(split[0]), default: 0] += Int(split[1])!
    }
    
    for i in 0..<privacies.count {
        let split = privacies[i].split(separator: " ")
        
        let date = split[0].split(separator: ".").compactMap{ Int($0) }
        let term = termsDict[String(split[1])]!
        
        let expiredDays = (date[0] * 12 * 28) + (date[1] * 28) + date[2] + (term * 28)
        let todayDays = (todayDate[0] * 12 * 28) + (todayDate[1] * 28) + todayDate[2]
        
        if todayDays >= expiredDays {
            result.append(i + 1)
        }
    }
    
    return result
}