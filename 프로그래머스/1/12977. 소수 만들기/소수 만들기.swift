import Foundation

func solution(_ nums:[Int]) -> Int {
    func isPrimeNumber(_ n: Int) -> Bool {
        var i = 2
        
        while i * i <= n {
            if n % i == 0 { return false }
            i += 1
        }
        
        return true
    }
    
    var count = 0
    
    for i in nums.indices {
        for j in nums.indices where j > i {
            for k in nums.indices where k > j {
                let firstNum = nums[i]
                let secondNum = nums[j]
                let thirdNum = nums[k]
                let sum = firstNum + secondNum + thirdNum
                if isPrimeNumber(sum) { count += 1 }
            }
        }
    }
    
    return count
}