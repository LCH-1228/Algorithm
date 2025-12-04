func solution(_ s:String) -> String {
    let numbers = s.split(separator: " ").compactMap { Int($0) }
    guard let minValue = numbers.min(), let maxValue = numbers.max() else {
        return ""
    }
    return "\(minValue) \(maxValue)"
}