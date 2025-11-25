import Foundation

func solution(_ sides:[Int]) -> Int {
    // sides 가장 긴 변일때 : result < sides[0] + sides[1]
    // reulst가 가장 긴 변일때: |sides[0] - sides[1]| < result
    // |sides[0] - sides[1]| < result < sides[0] + sides[1]
    
    let firstSide = sides[0]
    let secondSide = sides[1]
    let minResult = abs(firstSide - secondSide) + 1
    let maxResult = firstSide + secondSide - 1
    
    return maxResult - minResult + 1
}