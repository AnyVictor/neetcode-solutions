class Solution {

    func encode(_ strs: [String]) -> String {
        var encodedString = ""
        for str in strs {
            encodedString.append("\(str.count)#\(str)")
        }
        return encodedString
    }

    func decode(_ str: String) -> [String] {
        var decodedStrings = [String]()
        let chars = Array(str)
        var index = 0

        while index < str.count {
            var j = index

            while chars[j] != "#" {
                j += 1
            }

            if let length = Int(String(chars[index ..< j])) {
                decodedStrings.append(String(chars[j + 1 ..< j + length + 1]))
                index = j + length + 1
            }
        }
        return decodedStrings
    }
}
