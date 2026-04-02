class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longestLength = 1
        var left = 0
        var right = 0
        var uniqueChars = Set<Character>()
        let chars = Array(s)

        if s.isEmpty { return 0 }

        while right < chars.count {
            if uniqueChars.contains(chars[right]) == false {
                uniqueChars.insert(chars[right])
                right += 1
            } else {
                let length = right - left
                longestLength = max(length, longestLength)

                while uniqueChars.contains(chars[right]) {
                    uniqueChars.remove(chars[left])
                    left += 1
                }
            }
        }

        let finalLength = chars.count - left
        longestLength = max(finalLength, longestLength)

        return longestLength
    }
}