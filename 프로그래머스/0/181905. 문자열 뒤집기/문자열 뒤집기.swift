import Foundation

func solution(_ myString:String, _ s:Int, _ e:Int) -> String {
    var result = myString
    let startIndex = result.index(result.startIndex, offsetBy: s)
    let endIndex = result.index(result.startIndex, offsetBy: e)
    
    let tartgetRange = startIndex...endIndex    
    result.replaceSubrange(tartgetRange, with: result[tartgetRange].reversed())
    
    return result
}