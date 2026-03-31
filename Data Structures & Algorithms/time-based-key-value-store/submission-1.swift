
class TimeMap {
    var timeMap: [String: [(String, Int)]] = [:]

    init() {}
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        timeMap[key, default: []].append((value, timestamp))
   }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        guard let values = timeMap[key] else {
            return ""
        }

        var left = 0
        var right = values.count - 1
        var result = ""

        while left <= right {
            let middle = (left + right) / 2

            if values[middle].1 <= timestamp {
                result = values[middle].0
                left = middle + 1
            } else {
                right = middle - 1
            }
        }

        return result
    }
}