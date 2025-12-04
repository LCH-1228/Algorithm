func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { row1, row2 in
        zip(row1, row2).map(+)
    }
}