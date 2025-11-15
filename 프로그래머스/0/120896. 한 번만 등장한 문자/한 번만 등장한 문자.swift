import Foundation

func solution(_ s:String) -> String {
    guard s.count > 0 && s.count <= 1000 else { return "" }
    var arrayS = s.map{$0}
    let setS = Set(s)
    var resultArray = [String]()
    for character in setS {
        if arrayS.contains(character) {
            arrayS.remove(at: arrayS.firstIndex(of: character)!)
        }
        
        if !arrayS.contains(character) {
            resultArray.append(String(character))
        }
    }
    
    resultArray.sort()
    
    var result = ""
    for character in resultArray {
        result += character
    }
    
    return result
}