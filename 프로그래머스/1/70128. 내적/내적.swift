import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).reduce(0) { sum, pair in
        sum + pair.0 * pair.1
    }
}