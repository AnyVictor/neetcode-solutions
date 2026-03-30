class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var leftProducts = Array(repeating: 1, count: nums.count)
        var rightProducts = Array(repeating: 1, count: nums.count)
        var result = [Int]()

        for i in stride(from: nums.count - 2, to: -1, by: -1) {
            rightProducts[i] = rightProducts[i + 1] * nums[i + 1]
        }

        for i in 0 ..< nums.count {
            if i > 0 {
                leftProducts[i] = leftProducts[i - 1] * nums[i - 1]
            }
            result.append(rightProducts[i] * leftProducts[i])
        }

        return result
    }
}
