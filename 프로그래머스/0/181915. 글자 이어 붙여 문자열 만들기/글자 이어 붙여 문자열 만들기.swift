import Foundation

func solution(_ myString:String, _ indexList:[Int]) -> String {
    let myStringArray = Array(myString)
    return String(indexList.map { myStringArray[$0] })
}