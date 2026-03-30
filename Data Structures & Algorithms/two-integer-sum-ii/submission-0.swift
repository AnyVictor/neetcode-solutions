class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1


        while numbers[left] + numbers[right] != target {
            let result = numbers[left] + numbers[right]
            if result < target {
                left += 1
                continue
            }

            if result > target {
                right -= 1
            }
        }

        return [left + 1, right + 1]
    }
}