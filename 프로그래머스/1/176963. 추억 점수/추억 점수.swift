import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    let dict = name.enumerated()
        .reduce(into: [String : Int]()) { dict, object in
        dict[object.element, default: 0] += yearning[object.offset]
        }
    
    return photo.map {
        $0.reduce(0) { $0 + (dict[$1] ?? 0) }
    }
}