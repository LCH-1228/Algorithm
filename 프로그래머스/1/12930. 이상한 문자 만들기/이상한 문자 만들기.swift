func solution(_ s:String) -> String {
    return s.components(separatedBy: " ")
        .map { word in
            word.enumerated()
                .map { offset, object in
                    offset % 2 == 0 ? object.uppercased() : object.lowercased()
                }
                .joined()
        }
        .joined(separator: " ")
}