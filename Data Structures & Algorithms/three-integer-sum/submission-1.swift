class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let numbers = nums.sorted()
        var result = [[Int]]()

        for (index, value) in numbers.enumerated() {
            if index + 2 > numbers.count - 1 {
                return result
            }
            if index > 0 && value == numbers[index - 1] {
                continue
            }
            var l = index + 1
            var r = numbers.count - 1
            while l < r {
                var threeSum = value + numbers[l] + numbers[r]
                if threeSum > 0 {
                    r -= 1
                } else if threeSum < 0 {
                    l += 1
                } else {
                    result.append([value, numbers[l], numbers[r]])
                    l += 1
                    while  l < r && numbers[l] == numbers[l - 1] {
                        l += 1
                    }
                }
            }
        }
        return result
    }
}