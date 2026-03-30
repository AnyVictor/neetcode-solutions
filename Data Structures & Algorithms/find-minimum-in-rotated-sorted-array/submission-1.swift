class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var result = Int.max

        while left <= right {
            let middle: Int = (left + right) / 2
            print(middle, left, right)
            result = min(nums[middle], result)

            if nums[middle] <= nums[right] {
                right = middle - 1
            } else if nums[middle] > nums[right] {
                left = middle + 1
            }
        }

        return result
    }
}

// [6, 1, 2, 3, 4, 5]