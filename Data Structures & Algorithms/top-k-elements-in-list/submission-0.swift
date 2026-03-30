class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        var freq = Array(repeating: [Int](), count: nums.count + 1)
        var result = [Int]()

        guard k > 0 else { return result }

        for num in nums {
            dict[num, default: 0] += 1
        }

        for (key, value) in dict {
            freq[value].append(key)
        }

        for i in stride(from: freq.count - 1, through: 0, by: -1) {
            for num in freq[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }

        return result    
    }
}
