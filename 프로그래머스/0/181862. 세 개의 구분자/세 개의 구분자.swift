import Foundation

func solution(_ myStr:String) -> [String] {
    let result =  myStr.split { "abc".contains($0) }.map(String.init)
    return result.count != 0 ? result : ["EMPTY"]
}