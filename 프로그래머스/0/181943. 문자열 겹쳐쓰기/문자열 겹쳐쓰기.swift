import Foundation

func solution(_ myString:String, _ overwriteString:String, _ s:Int) -> String {
    var result = myString
    let startIndex = myString.index(myString.startIndex, offsetBy: s)
    let endIndex = myString.index(startIndex, offsetBy: overwriteString.count)
    result.replaceSubrange(startIndex..<endIndex, with: overwriteString)
    return result
}