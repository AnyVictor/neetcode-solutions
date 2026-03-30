class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for i in 0 ..< nums.count {
            if let sumIndex = dict[nums[i]] {
                return [sumIndex, i]
            } else {
                dict[target - nums[i]] = i
            }
        }

        return []
    }
}
