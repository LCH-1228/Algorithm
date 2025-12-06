import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let sortedSizes = sizes.map {
        $0.sorted(by: >)
    }
    let w = sortedSizes.map { $0[0] }.max()!
    let h = sortedSizes.map { $0[1] }.max()!
    let paperSize = w * h
    
    return paperSize
}