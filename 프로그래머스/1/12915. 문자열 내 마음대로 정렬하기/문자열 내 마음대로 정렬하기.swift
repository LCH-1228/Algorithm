func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let index1 = $0.index($0.startIndex, offsetBy: n)
        let index2 = $1.index($1.startIndex, offsetBy: n)
        
        let char1 = $0[index1]
        let char2 = $1[index2]
        
        return char1 == char2 ? $0 < $1 : char1 < char2
    }
}