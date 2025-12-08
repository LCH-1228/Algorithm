import Foundation

func solution(_ food:[Int]) -> String {
    let leftSide = food.enumerated()
        .reduce(into: [String]()) { array, object in
            let count = object.element / 2
            let foods = Array(repeatElement(String(object.offset), count: count))
            array.append(contentsOf: foods)
        }
    let rightSide = leftSide.reversed()
    
    return (leftSide + ["0"] + rightSide).joined()
}