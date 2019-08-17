//Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
//
//push(x) -- Push element x onto stack.
//pop() -- Removes the element on top of the stack.
//top() -- Get the top element.
//getMin() -- Retrieve the minimum element in the stack.
//
//
//Example:
//
//MinStack minStack = new MinStack();
//minStack.push(-2);
//minStack.push(0);
//minStack.push(-3);
//minStack.getMin();   --> Returns -3.
//minStack.pop();
//minStack.top();      --> Returns 0.
//minStack.getMin();   --> Returns -2.

class MinStack {

    var array = [Int]()
    var minArray = [Int]()
    
    func push(_ x: Int) {
        array.append(x)
        if minArray.isEmpty {
            minArray.append(x)
        } else {
            if x <= minArray.last! {
                minArray.append(x)
            }
        }
    }
    
    func pop() {
        if array.popLast() == minArray.last {
            minArray.popLast()
        }
    }
    
    func top() -> Int {
        return array.last ?? 0
    }
    
    func getMin() -> Int {
        return minArray.last ?? 0
    }
}

// node Solution
class Node {
    let data : Int
    var min : Int
    var next: Node? = nil
    init(_ x: Int) {
        data = x
        min = x
        next = nil
    }
}
class MinStackNodeSolution {
    private var head : Node?
    func push(_ x: Int) {
        if head == nil {
            head = Node(x)
        } else {
            let node = Node(x)
            node.min = min(head!.min, x)
            node.next = head
            head = node
        }
    }
    
    func pop() {
       head = head?.next
    }
    
    func top() -> Int {
       return head?.data ?? 0
    }
    
    func getMin() -> Int {
        return head?.min ?? 0
    }
    
}
