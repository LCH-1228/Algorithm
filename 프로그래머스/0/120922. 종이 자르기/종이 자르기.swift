import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    let verticalCrop = M - 1
    let horizontalCrop = (N - 1) * M
    return verticalCrop + horizontalCrop
}