import Foundation

func solution(_ array:[Int]) -> Int {
    return  array.map(String.init)
    .flatMap { (part: String) -> String in return part }
    .filter { $0 == "7"}
    .count
}