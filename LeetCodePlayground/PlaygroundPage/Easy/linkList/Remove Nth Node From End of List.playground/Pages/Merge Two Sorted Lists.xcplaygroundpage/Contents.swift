//
//Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
//
//Example:
//
//Input: 1->2->4, 1->3->4
//Output: 1->1->2->3->4->4
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
//        var l1 = l1
//        var l2 = l2
//        let newHead = ListNode(0)
//        var current = newHead
//        while let node1 = l1 , let node2 = l2 {
//            if node1.val > node2.val {
//                current.next = node2
//                l2 = node2.next
//            }else{
//                current.next = node1
//                l1 = node1.next
//            }
//            current = current.next!
//        }
//        if l1 != nil {
//            current.next = l1
//        }else if l2 != nil{
//            current.next = l2
//        }
//        return newHead.next
        var l1 = l1
        var l2 = l2
        let newHead = ListNode(0)
        var curr = newHead
        while let node1 = l1 , let node2 = l2 {
            if node1.val < node2.val {
                curr.next = node1
                l1 = node1.next
            }else {
                curr.next = node2
                l2 = node2.next
            }
            curr = curr.next!
        }
        if l1 != nil {
            curr.next = l1
        }else if l2 != nil {
            curr.next = l2
        }
        return newHead.next
        
        
    }
}
