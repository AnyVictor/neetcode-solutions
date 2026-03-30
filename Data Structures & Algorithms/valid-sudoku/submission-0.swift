class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [Int: Set<Character>]()
        var cols = [Int: Set<Character>]()
        var blocks = [String: Set<Character>]()

        for r in 0..<9 {
            for c in 0..<9 {
                let value = board[r][c]
                if value == "." { continue }

                if rows[r, default: []].contains(value) {
                    return false
                }

                if cols[c, default: []].contains(value) {
                    return false
                }

                let blockKey = "\(r / 3),\(c / 3)"
                if blocks[blockKey, default: []].contains(value) {
                    return false
                }

                rows[r, default: []].insert(value)
                cols[c, default: []].insert(value)
                blocks[blockKey, default: []].insert(value)
            }
        }

        return true
    }
}
