class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var longestSequence = 0
        for num in set {
            var sequence = 1
            if !set.contains(num - 1) {
                while set.contains(num + sequence) {
                    sequence += 1
                }
                longestSequence = max(sequence, longestSequence)
            }
        }
        return longestSequence
    }
}