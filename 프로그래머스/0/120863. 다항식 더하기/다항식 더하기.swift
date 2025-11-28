import Foundation

func solution(_ polynomial:String) -> String {
    var result = ""
    var coef = 0
    var constant = 0
    for term in polynomial.split(separator: " ") {
        if term.last == "x" {
            let num = term.dropLast()
            coef += num.isEmpty ? 1 : Int(num) ?? 0
        } else if term != "+" {
            constant += Int(term) ?? 0
        }
    }
    
    if coef > 0 {
        result = coef == 1 ? "x" : "\(coef)x"
    }
    if constant > 0 {
        result += result.isEmpty ? "\(constant)" : " + \(constant)"
    }
    
    return result
}