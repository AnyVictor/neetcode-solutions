class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var longestSequence = 0
        for num in set {
            if !set.contains(num - 1) {
                var length = 1
                while set.contains(num + length) {
                    length += 1
                }
                longestSequence = max(length, longestSequence)
            }
        }
        return longestSequence
    }
}