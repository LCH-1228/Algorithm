import Foundation

func solution(_ s:String) -> Bool {
    let (p, y) = s.reduce(into: (0, 0)) { tuple, char in
        let c = char.lowercased()
        if c == "p" {
            tuple.0 += 1
        } else if c == "y" {
            tuple.1 += 1
        }
    }
    
    return p == y
}