class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let contHeight = min(height[left], height[right])
            let area = contHeight * (right - left)

            maxArea = max(area, maxArea)

            if height[left] > height[right] {
                right -= 1
            } else {
                left += 1
            }
        }

        return maxArea
    }
}