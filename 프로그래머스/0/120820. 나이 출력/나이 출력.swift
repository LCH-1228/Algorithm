import Foundation

func solution(_ age:Int) -> Int {
    if age > 0 && age <= 120 {
        return (2022 - age) + 1
    }
    return 0
}