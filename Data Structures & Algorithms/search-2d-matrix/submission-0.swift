class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var left = 0
        var right = matrix.count * matrix[0].count - 1

        while left <= right {
            let middle = (left + right) / 2
            let x = middle / (matrix[0].count)
            let y = middle % matrix[0].count

            if matrix[x][y] > target {
                right = middle - 1
            } else if matrix[x][y] < target {
                left = middle + 1
            } else {
                return true
            }
        }
        return false
    }
}
