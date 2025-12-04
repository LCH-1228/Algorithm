import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a.sorted(by: <), b.sorted(by: >)).reduce(0) { result, pair in
        result + pair.0 * pair.1
    }
}