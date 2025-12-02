func solution(_ a:Int, _ b:Int) -> Int64 {
    /*
    기존 풀이 - O(n)
    guard a != b else { return Int64(a) }
    let min = a < b ? a : b
    let max = a < b ? b : a
    return Int64((min...max).reduce(0, +))
    */
    
    /*
    등차수열의 합 - O(1)
    S = (첫항 + 끝항) * 항의 개수 / 2
    */
    guard a != b else { return Int64(a) }
    let min = a < b ? a : b
    let max = a < b ? b : a
    return Int64(min + max) * Int64(max - min + 1) / Int64(2)
}