class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack = [(index: Int, height: Int)]()
        var largestArea: Int = 0

        for (index, height) in heights.enumerated() {
            if stack.isEmpty {
                stack.append((index, height))
                continue
            }

            if height > stack.last!.height {
                stack.append((index, height))
            } else {
                var lastRemovedIndex = -1
                while let lastElement = stack.last, lastElement.height >= height {
                    let area = (index - lastElement.index) * lastElement.height
                    largestArea = max(area, largestArea)
                    lastRemovedIndex = lastElement.index
                    stack.removeLast()
                }
                stack.append((lastRemovedIndex, height))
            }
        }

        while let lastElement = stack.last {
            let area = (heights.count - lastElement.index) * lastElement.height
            largestArea = max(area, largestArea)
            stack.removeLast()
        }

        return largestArea
    }
}