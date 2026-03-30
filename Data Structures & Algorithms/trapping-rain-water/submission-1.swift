class Solution {
    func trap(_ height: [Int]) -> Int {
        var maxLeft = Array(repeating: 0, count: height.count)
        var maxRight = Array(repeating: 0, count: height.count)
        var minLR = Array(repeating: 0, count: height.count)
        var water = 0

        for i in 1 ..< height.count {
            maxLeft[i] = max(maxLeft[i - 1], height[i - 1])
        }

        for i in stride(from: height.count - 2, to: -1, by: -1) {
            maxRight[i] = max(maxRight[i + 1], height[i + 1])
        }

        for i in 0 ..< height.count {
            minLR[i] = min(maxRight[i], maxLeft[i])
            let localWater = minLR[i] - height[i]
            if localWater > 0 { water += localWater }
        }
        
        print(maxLeft.count, maxRight.count, minLR.count)


        return water
    }
}
