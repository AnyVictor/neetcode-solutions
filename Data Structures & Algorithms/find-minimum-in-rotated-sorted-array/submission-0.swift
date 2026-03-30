class Solution {
    func findMin(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var right = nums[0]
        var left = right - nums.count + 1
        var result = 3840293
        
        while left <= right {
            let middle = (left + right) / 2
            if !numSet.contains(middle) {
                left = middle + 1
            } else if numSet.contains(middle - 1) {
                right = middle - 1
            } else {
                return middle
            }
        }

        return 0
    }
}
