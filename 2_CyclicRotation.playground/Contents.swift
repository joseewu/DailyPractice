//: Playground - noun: a place where people can play

import Foundation

class ShiftArray {
    init() {

    }
    public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
        guard A.count > 0 else {return A}
        let remaining = K % A.count
        if remaining == 0 {
            return A
        } else {
            let srartIndex = A.count - remaining
            let endIndex = srartIndex + A.count
            var temp = A
            temp.append(contentsOf: A)
            let new = temp[srartIndex..<endIndex]
            A = Array(new)
            return Array(new)
        }
    }
}
var testCase = [1,2,3,4,5]
let shiftArray = ShiftArray().solution(&testCase,0)
print(testCase)
print(shiftArray)

