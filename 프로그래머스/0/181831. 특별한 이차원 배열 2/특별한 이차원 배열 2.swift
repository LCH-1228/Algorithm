import Foundation

func solution(_ arr:[[Int]]) -> Int {
    for i in 0..<arr.count {
        for j in i + 1..<arr.count  {
            guard arr[i][j] == arr[j][i] else { return 0 }
        }
    }
    return 1
}