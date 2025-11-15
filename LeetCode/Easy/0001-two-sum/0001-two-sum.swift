class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let n = nums.count
        for i in 0..<n {
            for j in (i + 1)..<n {
                if nums[j] == target - nums[i] {
                    return [i, j]
                }
            }
        }
        return []
    }
}