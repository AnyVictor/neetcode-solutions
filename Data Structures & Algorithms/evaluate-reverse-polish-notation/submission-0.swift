class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            if let value = Int(token) {
                stack.append(value)
                continue
            }

            let first = stack.removeLast()
            let second = stack.removeLast()

            switch token {
                case "+":
                    stack.append(second + first)
                case "-":
                    stack.append(second - first)
                case "*":
                    stack.append(second * first)
                case "/":
                    stack.append(second / first)
                default:
                    break
            }
        }
        return stack[0]
    }
}
