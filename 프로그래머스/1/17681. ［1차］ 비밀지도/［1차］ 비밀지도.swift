func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    func paddedBinary(_ value: Int) -> String {
        let binary = String(value, radix: 2)
        let paddingCount = n - binary.count
        
        return String(repeating: "0", count: paddingCount) + binary
    }
    
    return (0..<n).map { i in
        let x = paddedBinary(arr1[i])
        let y = paddedBinary(arr2[i])

        return zip(x, y).map { bit1, bit2 in
            (bit1 == "0" && bit2 == "0") ? " " : "#"
        }.joined()
    }   
}