import Foundation

func solution(_ before:String, _ after:String) -> Int {
    let beforeDic = makeDictionary(before)
    let afterDic = makeDictionary(after)
    return beforeDic == afterDic ? 1 : 0
}

func makeDictionary(_ input: String) -> [Character: Int] {
    var value = [Character: Int]()
    for char in input {
        if value[char] == nil {
            value[char] = 1
        } else {
            value[char]! += 1
        }
    }
    return value
}