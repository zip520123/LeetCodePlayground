//: [Previous](@previous)

//Reverse a singly linked list.
//
//Example:
//
//Input: 1->2->3->4->5->NULL
//Output: 5->4->3->2->1->NULL
//Follow up:
//
//A linked list can be reversed either iteratively or recursively. Could you implement both?
import XCTest

class Solution : XCTestCase{
    func reverseList(_ head: ListNode?) -> ListNode? {
        var head = head
        let curr = head
        
//        while let next = curr?.next {
//            curr?.next = next.next
//            next.next = head
//            head = next
//        }
        while let next = curr?.next {
            curr?.next = next.next
            next.next = head
            head = next
        }
        return head
    }
    func test1(){
        let inputNode = newNode(0...5)
        let output = newNode( (0...5))
        printNode(inputNode)
        var a = [0,1,2,3,6,5,4,8,9]
        var count = 0
//        while a.index(of: 0) != 0 {
//            a.remove(at: a.index(of: 0)!)
//            count += 1
//        }
        

    }
    func newNode(_ range : CountableClosedRange<Int>) -> ListNode{
        var node : ListNode = ListNode(range.lowerBound)
        let head : ListNode = node
//        if range.lowerBound + 1 > range.upperBound {
//            return head
//        }
        for i in range {
//        for i in (range.lowerBound + 1)...range.upperBound{
            let nextNode = ListNode(i)

            node.next = nextNode
            node = nextNode
        }
        return head
    }
    func printNode(_ head:ListNode?){
        var node = head
        while (node != nil){
            print(node?.val)
            node = node?.next
        }
    }
}

Solution.defaultTestSuite.run()
