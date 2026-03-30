class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var i = 0
        var c = Array(s.lowercased().filter({ $0.isLetter || $0.isNumber }))
        var j = c.count - 1
        while i < j {
            guard c[i] == c[j] else {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}