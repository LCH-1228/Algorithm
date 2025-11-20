import Foundation

func solution(_ a:String, _ b:String) -> String {
    var result = [String]()
    let (shortArray, longArray) = a.count < b.count
    ? (Array(a.reversed()), Array(b.reversed()))
    : (Array(b.reversed()), Array(a.reversed()))
    
    var carry = 0
    var index = 0
    
    while index < shortArray.count {
        let digitA = Int(String(shortArray[index])) ?? 0
        let digitB = Int(String(longArray[index])) ?? 0
        
        let sum = digitA + digitB + carry
        carry = sum / 10
        result.append(String(sum % 10))
        
        index+=1
    }
    
    while index < longArray.count && carry != 0 {
        let digitB = Int(String(longArray[index])) ?? 0
        
        let sum = digitB + carry
        carry = sum / 10
        result.append(String(sum % 10))
        index += 1
    }
    
    if index < longArray.count {
        let remainingArray = longArray[index...]
        result.append(contentsOf: remainingArray.map(String.init))
    } else if carry != 0 {
        result.append("1")
    }
    
    return result.reversed().joined()    
}