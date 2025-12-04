func solution(_ s:String) -> String {
    return s.components(separatedBy: " ")
        .map { word in
            guard let first = word.first else { return "" }
            let head = first.isLetter ? String(first).uppercased() : String(first)
            let tail = word.dropFirst().lowercased()
            return head + tail
        }
        .joined(separator: " ")
}