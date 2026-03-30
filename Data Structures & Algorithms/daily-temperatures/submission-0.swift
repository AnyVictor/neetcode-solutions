class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [(value: Int, index: Int)]()
        var result = Array(repeating: 0, count: temperatures.count)

        for (index, value) in temperatures.enumerated() {
            while !stack.isEmpty && stack.last!.value < value {
                let elementIndex = stack.last!.index
                result[elementIndex] = index - elementIndex
                stack.removeLast()
            }
            stack.append((value, index))
        }
        return result
    }
}
