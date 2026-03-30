class Solution {
    func trap(_ height: [Int]) -> Int {
        var maxL = height[0]
        var maxR = height[height.count - 1]
        var left = 0
        var right = height.count - 1
        var totalWater = 0

        while left < right {
            maxR = max(maxR, height[right])
            maxL = max(maxL, height[left])
            let minLR = min(maxL, maxR)
            var water = 0
            if maxL <= maxR {
                water = minLR - height[left]
                if water > 0 { totalWater += water }
                left += 1
            } else {
                water = minLR - height[right]
                if water > 0 { totalWater += water }
                right -= 1
            }
        }
        return totalWater
    }
}
