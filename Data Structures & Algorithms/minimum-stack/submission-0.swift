
class MinStack {
    var stack: [(value: Int, min: Int)]

    init() {
        stack = []
    }
    
    func push(_ val: Int) {
        stack.append(stack.isEmpty ? (val, val) : (val, min(stack.last!.min, val)))
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!.value
    }
    
    func getMin() -> Int {
        return stack.last!.min
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */