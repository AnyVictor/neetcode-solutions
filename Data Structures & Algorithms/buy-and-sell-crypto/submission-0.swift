class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var left = 0
        var right = 1

        while right < prices.count {
            guard prices[left] < prices[right] else {
                left = right
                right += 1
                continue
            }

            let profit = prices[right] - prices[left]
            maxProfit = max(profit, maxProfit)

            right += 1
        } 

        return maxProfit
    }
}