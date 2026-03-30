class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var minEatingSpeed = 1
        var maxEatingSpeed = piles.max() ?? 1
        var result = 0

        while minEatingSpeed <= maxEatingSpeed {
            let eatingSpeed: Int = (minEatingSpeed + maxEatingSpeed) / 2
            var timeSpent: Int = 0

            for pile in piles {
                timeSpent += (pile / eatingSpeed)
                if pile % eatingSpeed != 0 {
                    timeSpent += 1
                }
            }

            if timeSpent <= h {
                maxEatingSpeed = eatingSpeed - 1
                result = eatingSpeed
            } else {
                minEatingSpeed = eatingSpeed + 1
            }
        }
        return result
    }
}
