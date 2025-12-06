import Foundation

func solution(_ s:String) -> Bool {
    let (p, y) = s.lowercased()
        .reduce(into: (0, 0)) { tuple, char in
        if char == "p" {
            tuple.0 += 1
        } else if char == "y" {
            tuple.1 += 1
        }
    }
    
    return p == y
}