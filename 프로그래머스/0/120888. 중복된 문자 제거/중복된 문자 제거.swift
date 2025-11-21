import Foundation

func solution(_ myString:String) -> String {
    var set = Set<Character>()
    return myString.filter{ set.insert($0).inserted }
}