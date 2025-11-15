import Foundation

func solution(_ nStr:String) -> String {
    guard nStr.count >= 2 && nStr.count <= 10 else { return nStr }
    guard nStr.filter({$0 == "0"}).count != nStr.count else { return "" }
    var result = ""
    var tempArray = nStr.map{ String($0) }
    
    while tempArray.first == "0" {
        tempArray.remove(at: 0)
    }
    
    for i in tempArray {
        result += i
    }
    
    return result
}